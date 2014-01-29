Given /^I am on the Views page$/ do
    visit ViewPage         
end

And /^I select "(.+)" and rename it with "(.+)"$/ do |oldname, newname|
    on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.fire_event('click')
		page.rename_map(oldname, newname)
    end
end

Given /^I save a map with "(.+?)"$/ do |name|
    on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click
		sleep(2)
		page.map = name
		page.iconset = "std_big"
		page.map_image_list = "CorporateWebSite.png"
		page.submit_button_element.when_present.click
		sleep(3)
    end
end

Given /^I delete the map with "(.+?)"$/ do |delete_map|
    on ViewPage do |page|
		sleep(2)
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.fire_event('click')
		sleep(2)
		#@browser.frame(:id => "myframe").table(:id => /popupWindowMaster/).table(:id => /table_map_delete/).td(:class => "tdfield").select_list(:name => "map").option(:text => delete_map).select
		page.delete_map(delete_map)
		sleep(2)
    end
end


Given /^I verify that the map with "(.+?)" has been deleted$/ do |delete_map|
    on ViewPage do |page|
		page.open_element.fire_event 'mouseover'
		sleep(2)		
		@browser.frame(:id => "myframe").link(:text => delete_map).exists?.should == false
    end
end

And /^I import a map$/ do
	 on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click
		sleep(2)
		page.uploadmap_element.set("/usr/nagvisdata/test.cfg")
		page.import_submit_element.when_present.click
		sleep(4)
		@browser.frame(:id => "myframe").link(:id => /map-test-icon/).when_present.click
		sleep(4)
	end
end	
		
And /^I delete the imported map "(.+?)"$/ do |delete_map|	
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click	
		page.delete_map(delete_map)
		sleep(2)
		page.open_element.fire_event 'mouseover'
		sleep(2)		
		@browser.frame(:id => "myframe").link(:text => delete_map).exists?.should == false
		sleep(2)
    end
end


And /^I give user permission to "(.+)"$/ do |gwuser|
	on ViewPage do |page|
	page.usermenu_element.fire_event 'mouseover'
	page.manageuser_element.fire_event('click')
	sleep(2)
	page.modify_user(gwuser)
	page.selectcheck_element.when_present.clear
	page.selectcheck1_element.when_present.set
	page.selectcheck2_element.when_present.set
	page.saveuser_element.when_present.click
	end
end

And /^I logout from current user$/ do
    on DashboardPage do |page|
		sleep(2)
        page.logout
    end
end

When /^I login with (.+) gwuser$/ do |user|
    on LoginPage do |page|
        page.login_user(user,user)
    end
end

Then /^I should be able to see the "(.+)" map$/ do |newname|
	on ViewPage do |page|
		visit ViewPage
		page.select_map(newname)
	end
end

And /^I login with admin$/ do
	on LoginPage do |page|
	page.login_user('admin','admin')
	end
end
	
Given /^I reset the user permission of "(.+)"$/ do |gwuser|
	on ViewPage do |page|
		visit ViewPage  
		page.usermenu_element.fire_event 'mouseover'
		page.manageuser_element.fire_event('click')
		sleep(2)
		page.modify_user(gwuser)
		page.selectcheck_element.when_present.set
		page.selectcheck1_element.when_present.clear
		page.selectcheck2_element.when_present.clear
		page.saveuser_element.when_present.click
	end
end

And /^I edit a object$/ do
	on ViewPage do |page|
	page.map2_element.when_present.click
	sleep(3)
	page.object_element.when_present.right_click
	page.unlock_element.fire_event('click')
	page.object_element.when_present.right_click
	page.modify_element.when_present.click
	page.hostname = "bsm-host"
	page.modify_button_element.when_present.click
	sleep(5)
	#page.object_element.when_present.right_click
	page.editmap_element.fire_event 'mouseover'
	sleep(2)
	page.lockunlock_element.fire_event('click')
	page.object1_element.fire_event('click')
	sleep(10)
	end
end

Then /^I verify that the object is modified$/ do
	on StatusviewerPage do |page|		
		@browser.span(:id => /HVform:txthostName/, :text => /bsm-host/).exists?.should == true
	end
end

And /^I revert the changes made above$/ do
	on ViewPage do |page|
	sleep(3)
	page.map3_element.when_present.click
	sleep(3)
	#page.object_element.when_present.right_click
	#page.lockunlock_element.when_present.click
	page.editmap_element.fire_event 'mouseover'
	page.lockunlock_element.fire_event('click')
	page.object1_element.when_present.right_click
	page.modify_element.when_present.click
	page.hostname = "localhost"
	page.modify_button_element.when_present.click
	sleep(5)
	#page.object_element.when_present.right_click
	page.editmap_element.fire_event 'mouseover'
	sleep(2)
	page.lockunlock_element.fire_event('click')
	end
end



Given /^the created map with name "(.+?)" should not be saved$/ do |name|
    on ViewPage do |page|
		page.open_element.fire_event 'mouseover'
		sleep(2)
		@browser.frame(:id => "myframe").link(:text => name).exists?.should == false
	end
end

And /^I add an icon on newmap$/ do
	on ViewPage do |page|
		page.newmap_element.when_present.click
		sleep(3)
		page.editmap_element.fire_event 'mouseover'
		page.addicon_element.fire_event 'mouseover'
		page.addhost_element.when_present.click
		page.background_element.when_present.click
		sleep(3)
		page.hostname = "bsm-host"
		page.modify_button_element.when_present.click
		sleep(5)
		#page.hostadded_element.fire_event('click')
		page.hostadded_element.fire_event('click')
		sleep(5)
	end
end

And /^I delete the host object$/ do
	visit ViewPage  
		on ViewPage do |page|
		page.newmap_element.when_present.click
		sleep(3)
		page.hostadded_element.fire_event 'mouseover'
		page.hostadded_element.when_present.right_click
		#page.hostadded_element.when_present.send_keys("{APPSKEY}")
		sleep(2)
		page.unlock_element.when_present.click
		sleep(2)
		page.hostadded_element.fire_event 'mouseover'
		page.hostadded_element.when_present.right_click
		sleep(2)
		page.delhostobject_element.when_present.click
		sleep(1)
		@browser.alert.ok
		sleep(5)
	end
end

And /^I verify deleted host object$/ do
	on ViewPage do |page|
		@browser.frame(:id => "myframe").img(:alt => /host-bsm-host/).exists?.should == false
	end
end

And /^I add an icon service on newmap$/ do
	on ViewPage do |page|
		page.newmap_element.when_present.click
		sleep(3)
		page.editmap_element.fire_event 'mouseover'
		page.addicon_element.fire_event 'mouseover'
		page.addservice_element.when_present.click
		sleep(2)
		page.background_element.when_present.click
		sleep(3)
		page.hostname = "bsm-host"
		sleep(3)
		page.service_desc = /bsm-service-01/
		page.modify_button_element.when_present.click
		sleep(5)
		page.serviceicon_element.fire_event('click')
		sleep(5)
	end
end	

Then /^I verify that the service object service exists$/ do
	on StatusviewerPage do |page|		
		@browser.span(:id => "SVform:SHtxtServiceName", :text => /bsm-service-01/).exists?.should == true
		sleep(2)
	end
end

And /^I delete the serviceicon$/ do
	visit ViewPage
		on ViewPage do |page|
		page.newmap_element.when_present.click
		sleep(3)
		page.serviceicon_element.when_present.right_click
		page.unlock_element.when_present.click
		page.serviceicon_element.when_present.right_click
		page.delhostobject_element.when_present.click
		@browser.alert.ok
		sleep(2)
	end
end

Then /^I verify deleted service icon$/ do
	on ViewPage do |page|
		page.serviceicon_element.exists?.should == false
	end
end

And /^I add a hostline$/ do
	on ViewPage do |page|
		page.newmap_element.when_present.click
		page.editmap_element.fire_event 'mouseover'
		page.addline_element.fire_event 'mouseover'
		page.linehost_element.fire_event('click')
		page.background_element.when_present.click
		sleep(2)
		page.background_element.drag_and_drop_by 200, -200
		sleep(2)
		page.background_element.fire_event('click')
		sleep(3)
		page.hostname = "bsm-host"
		sleep(3)
		page.modify_button_element.when_present.click
		sleep(5)
		page.lineadded_element.fire_event('click')
		sleep(5)
	end
end	

Then /^I verify that the host object exists$/ do
	on StatusviewerPage do |page|		
		@browser.span(:id => "HVform:txthostName", :text => /bsm-host/).exists?.should == true
		sleep(2)
	end
end











And /^I add a line$/ do
	on ViewPage do |page|
		page.newmap_element.when_present.click
		page.editmap_element.fire_event 'mouseover'
		page.addline_element.fire_event 'mouseover'
		page.serviceline_element.fire_event('click')
		page.background_element.when_present.click
		sleep(2)
		page.background_element.drag_and_drop_by 200, -200
		sleep(2)
		page.background_element.fire_event('click')
		sleep(3)
		page.hostname = "bsm-host"
		sleep(3)
		page.service_desc = /bsm-service-01/
		page.modify_button_element.when_present.click
		sleep(5)
		page.lineadded_element.fire_event('click')
		sleep(5)
	end
end	
	
And /^I add a line as map$/ do
	on ViewPage do |page|
		page.newmap_element.when_present.click
		page.editmap_element.fire_event 'mouseover'
		page.addline_element.fire_event 'mouseover'
		page.linemap_element.fire_event('click')
		page.background_element.when_present.click
		sleep(2)
		page.background_element.drag_and_drop_by 200, -200
		sleep(2)
		page.background_element.fire_event('click')
		sleep(3)
		page.mapname = "GeoOffice"
		page.modify_button_element.when_present.click
		sleep(5)
		page.lineadded_element.fire_event('click')
		sleep(5)
	end
end	

	
And /^I add a special textbox with "(.+?)"$/ do |name|
	on ViewPage do |page|
		page.SANJOSE_element.when_present.click
		page.editmap_element.fire_event 'mouseover'
		page.addspecial_element.fire_event 'mouseover'
		page.specialtextbox_element.fire_event('click')
		page.background_element.when_present.click
		sleep(2)
		page.background_element.drag_and_drop_by 200, -200
		sleep(2)
		page.background_element.fire_event('click')
		page.textname = name
		page.selectnegative_element.when_present.clear
		page.selectnegative1_element.when_present.clear
		page.submit_button_element.when_present.click
		sleep(6)
	end
end

And /^I verify the textbox$/ do	
	on ViewPage do |page|
		page.textboxadded_element.exists?.should == true
	end
end

And /^I delete the textboxadded$/ do
	on ViewPage do |page|
		page.textboxadded_element.when_present.right_click
		page.unlock_element.when_present.click
		page.textboxadded_element.when_present.right_click
		page.delhostobject_element.when_present.click
		@browser.alert.ok
	end
end

And /^I verify deleted textboxadded$/ do
	on ViewPage do |page|
		page.textboxadded_element.exists?.should == false
	end
end

And /^I modify map with backgrnd "(.+?)" aliasname "(.+?)" color "(.+?)" mapiconset "(.+?)"$/ do |backgrnd, aliasname, color, iconset|
	on ViewPage do |page|
		page.map9_element.when_present.click
		page.editmap_element.fire_event 'mouseover'
		page.mapoptions_element.fire_event('click')
		page.mapbackgrnd = backgrnd
		page.selectalias_element.when_present.set
		page.aliasname = aliasname
		page.selectcolor_element.when_present.set
		page.backcolor = color
		page.mapiconset = iconset
		page.submit_button_element.when_present.click
		sleep(6)
	end
end

And /^I verify modified map options "(.+?)"$/ do |iconset|
	on ViewPage do |page|
	page.modifybackgrnd_element.exists?.should == true
		@browser.frame(:id => "myframe").body(:style => 'background-color: rgb(255, 33, 107);').exists?.should == true
		#page.modifycolor_element.exists?.should == true
		page.open_element.fire_event 'mouseover'
		sleep(2)
		@browser.frame(:id => "myframe").link(:text => iconset).when_present.click
		sleep(3)
		page.editmap_element.fire_event 'mouseover'
		page.addicon_element.fire_event 'mouseover'
		page.addhost_element.when_present.click
		page.background_element.when_present.click
		sleep(1)
		page.hostname = "bsm-host"
		page.submit_button_element.when_present.click
		sleep(3)
		page.modifyicon_element.exists?.should == true
		sleep(2)
	end
end
	
And /^I create a views background name "(.+?)" color "(.+?)" width "(.+?)" height "(.+?)"$/ do |name, color, width, height|
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managebackgrnd_element.when_present.click
		page.imagename = name
		page.imagecolor_element.set ('#'+color)
		page.imagewidth = width
		page.imageheight = height
		page.submit_button_element.when_present.click
		sleep(4)
	end
end

And /^I create a map with backgroundimage$/ do
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click
		sleep(2)
		page.map = "name"
		page.iconset = "std_big"
		page.map_image_list = "testimage.png"
		page.submit_button_element.when_present.click
		sleep(3)
    end
end

And /^I upload a background image$/ do
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managebackgrnd_element.when_present.click
		page.uploadimage_element.set("/usr/nagvisdata/windows.png")
		page.upload_submit_element.when_present.click
		sleep(10)
	end
end
	
	
And /^I create a map with uploadimage$/ do
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click
		sleep(2)
		page.map = "uploadimage"
		page.iconset = "cloud"
		page.map_image_list = "windows.png"
		page.submit_button_element.when_present.click
		sleep(3)
    end
end	
	
And /^I delete created background "(.+?)" and "(.+?)"$/ do | delete_map, delete_upload|
	on ViewPage do |page|
		sleep(2)	
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click
		page.delete_map(delete_map)
		sleep(2)
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click
		page.delete_map(delete_upload)
		sleep(2)
		
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managebackgrnd_element.when_present.click
		page.deletebackgrnd = "testimage.png"
		page.deletesubmit_element.when_present.click
		@browser.alert.ok
		sleep(4)
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managebackgrnd_element.when_present.click
		page.deletebackgrnd = "windows.png"
		page.deletesubmit_element.when_present.click
		@browser.alert.ok
		sleep(3)
		
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managebackgrnd_element.when_present.click
		sleep(2)
		@browser.select(:name => /map_image/, :text => /testimage.png/).exists?.should == false
		sleep(2)
		@browser.select(:name => /map_image/, :text => /windows.png/).exists?.should == false
		sleep(2)
	end
end	
	
And /^I upload a shape$/ do
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.manageshape_element.when_present.click
		sleep(2)
		page.uploadimage_element.set("/usr/nagvisdata/test-shape.png")
		page.upload_submit_element.when_present.click
		sleep(3)
	end
end	

And /^I create a map with the shape$/ do
	on ViewPage do |page|
		page.map5_element.when_present.click
		page.editmap_element.fire_event 'mouseover'
		page.addspecial_element.fire_event 'mouseover'
		page.addshape_element.when_present.click
		page.background_element.when_present.click
		page.shapeicon = "test-shape.png"
		page.submit_button_element.when_present.click
		sleep(8)
		page.iconshape_element.exists?.should == true
	end
end	

And /^I delete the shape that cannot be deleted$/ do
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.manageshape_element.when_present.click
		sleep(2)
		page.icondelete = "test-shape.png"
		page.deletesubmit_element.when_present.click
		@browser.alert.ok
	end
end	
		
And /^I delete the shape$/ do
	on ViewPage do |page|
		page.map5_element.when_present.click
		sleep(2)
		page.iconshape_element.when_present.right_click
		page.unlock_element.when_present.click
		page.iconshape_element.when_present.right_click
		page.delhostobject_element.when_present.click
		@browser.alert.ok
		sleep(2)
		page.iconshape_element.exists?.should == false
	end
end	
	
And /^I export a map to static$/ do
	on ViewPage do |page|
		page.map2_element.when_present.click
		sleep(2)
		page.action_element.fire_event 'mouseover'
		sleep(2)
		page.export_to_static_element.when_present.click
		sleep(2)
		page.target = "statictest"
		page.submit_button_element.when_present.click
		sleep(2)
		page.open_element.fire_event 'mouseover'
		sleep(2)
		page.staticmap_element.when_present.click
		sleep(2)
	end
end

And /^I delete the static map "(.+?)"$/ do |delete_map|
	on ViewPage do |page|
		page.options_element.fire_event 'mouseover'
		sleep(2)
		page.managemap_element.when_present.click	
		sleep(2)
		page.delete_map(delete_map)
		sleep(2)
		page.open_element.fire_event 'mouseover'
		sleep(2)		
		@browser.frame(:id => "myframe").link(:text => delete_map).exists?.should == false
		sleep(2)
    end
end
	
And /^error message appears appears saving invalid staticmap$/ do
	on ViewPage do |page|
		page.map2_element.when_present.click
		sleep(2)
		page.action_element.fire_event 'mouseover'
		sleep(2)
		page.export_to_static_element.when_present.click
		page.target = "!@"
		page.submit_button_element.when_present.click
		sleep(2)
		page.error_staticmap_element.exists?.should == true
	end
end

And /^I make a parent child map$/ do
	on ViewPage do |page|
		page.map5_element.when_present.click
		sleep(2)
		page.editmap_element.fire_event 'mouseover'
		page.mapoptions_element.fire_event('click')
		page.selectparent_element.when_present.set
		sleep(2)
		page.parentmap = "World"
		page.submit_button_element.when_present.click
		sleep(2)
	end
end

And /^I verfiy error message appears$/ do
	on ViewPage do |page|
		page.map2_element.when_present.click
		sleep(2)
		page.editmap_element.fire_event 'mouseover'
		page.mapoptions_element.fire_event('click')
		page.selectparent_element.when_present.set
		sleep(2)
		page.parentmap = "PublicWeb"
		page.submit_button_element.when_present.click
		sleep(2)
		page.error_staticmap_element.exists?.should == true
	end
end

And /^I make a container witout url with error$/ do
	on ViewPage do |page|
		page.SANJOSE_element.when_present.click
		sleep(2)
		page.editmap_element.fire_event 'mouseover'
		page.addspecial_element.fire_event 'mouseover'
		page.addcontainer_element.when_present.click
		page.background_element.fire_event('click')
		page.background_element.drag_and_drop_by 100, -200
		page.background_element.fire_event('click')
		sleep(3)
		page.submit_button_element.when_present.click
		page.urlerror_element.exists?.should == true	
	end
end

And /^I make a container$/ do
	on ViewPage do |page|
		page.containerurl = "http://en.wikipedia.org/wiki/Cucumber_%28software%29"
		page.contwidth = "700"
		page.contheight = "210"
		page.submit_button_element.when_present.click
		sleep(10)
	end
end		
		
And /^I verify the weblink inside container$/ do
	on ViewPage do |page|	
		@browser.frame(:id => "myframe").frame(:src => "http://en.wikipedia.org/wiki/Cucumber_(software)").link(:text => "acceptance tests").when_present.click
		sleep(6)
		@browser.frame(:id => "myframe").frame(:src => "http://en.wikipedia.org/wiki/Cucumber_(software)").span(:text => "Acceptance testing").exists?.should == true
	end
end		

And /^I delete the container$/ do
	on ViewPage do |page|	
		page.editmap_element.fire_event 'mouseover'
		page.lockunlock_element.fire_event('click')
		#page.containerdelete_element.when_present.right_click
		page.containerdelete_element.when_present.right_click
		sleep(2)
		page.delhostobject_element.when_present.click
		@browser.alert.ok
		sleep(2)
		page.editmap_element.fire_event 'mouseover'
		page.lockunlock_element.when_present.click
		sleep(2)
	end
end

And /^I verify deleted container$/ do
	on ViewPage do |page|
		page.containerdelete_element.exists?.should == false
	end
end

And /^I make and verify stateless line$/ do
	on ViewPage do |page|
		page.map5_element.when_present.click
		sleep(2)
		page.editmap_element.fire_event 'mouseover'
		page.addspecial_element.fire_event 'mouseover'
		page.addstateless_element.when_present.click
		page.background_element.fire_event('click')
		page.background_element.drag_and_drop_by 100, -200
		page.background_element.fire_event('click')
		sleep(2)
		page.x_text_field = '305,558'
		page.y_text_field = '45,43'
		page.submit_button_element.when_present.click
		sleep(4)
		page.stateline_element.exists?.should == true	
	end
end

And /^I delete and verify stateless line$/ do
	on ViewPage do |page|
		page.editmap_element.fire_event 'mouseover'
		sleep(1)
		page.lockunlock_element.when_present.click
		sleep(2)
		page.stateline1_element.when_present.right_click
		page.delhostobject_element.when_present.click
		@browser.alert.ok
		sleep(2)
		page.editmap_element.fire_event 'mouseover'
		page.lockunlock_element.when_present.click
		page.stateline_element.exists?.should == false
	end
end
	
	
And /^I select icon "(.+?)"$/ do |option|
	on ViewPage do |page|	
		page.icon_select(option)
	end
end	
	
And /^I verify the "(.+?)"$/ do |option|
	on ViewPage do |page|
		page.icon_verify(option)
	end
end


And /^I delete and verify the "(.+?)"$/ do |option|
	visit ViewPage
		on ViewPage do |page|
			page.icon_delete(option)
	end
end
	
#And /^I delete and verify the icons$/ do
	#visit ViewPage
	#	on ViewPage do |page|
	#	page.newmap_element.when_present.click
	#	sleep(3)
	#	page.icon1_element.when_present.right_click
	#	sleep(3)
	#	page.unlock_element.when_present.click
	#	page.icon1_element.when_present.right_click
	#	page.delhostobject_element.when_present.click
	#	@browser.alert.ok
	#	sleep(3)
	#	page.icon1_element.exists?.should == false
	#end
#end	
	
	
And /^I select line "(.+?)"$/ do |option|
	on ViewPage do |page|	
		page.line_select(option)
	end
end	
	
And /^I verify the line "(.+?)"$/ do |option|
	on ViewPage do |page|
		page.line_verify(option)
	end
end
	
Then /^I delete and verify the line$/ do 
	visit ViewPage
		on ViewPage do |page|
		page.map9_element.when_present.click
		sleep(3)
		page.lineadded_element.when_present.right_click
		sleep(3)
		page.unlock_element.when_present.click
		page.lineadded_element.when_present.right_click
		page.delhostobject_element.when_present.click
		@browser.alert.ok
		sleep(2)
		page.lineadded_element.exists?.should == false
	end
end
	
	
