Given /^I am on the Administration page$/ do
  visit AdministrationViewPage
end

Given /^I am on the New Staff page under Group$/ do
    on AdministrationViewPage do |page|
		sleep(5)
		page.group_element.fire_event 'mouseover'
        sleep(2)
		page.organization_element.fire_event 'mouseover'
		sleep(2)
		page.new_staff_element.when_present.click
    end
end

Given /^I create a new user account with username "(.*?)" and password "(.*?)" and firstname "(.*?)" and lastname "(.*?)" and email "(.*?)"$/ do |name, password, firstname, lastname, email|
    on AdministrationViewPage do |page|
        page.create_new_user(name, password, firstname, lastname, email)
			on PreferencePage do |page|
				page.ok
				sleep(5)
			end
	end
	
end

Given /^I login with "(.*?)" and "(.*?)"$/ do |name, password|
    on DashboardPage do |page|
        page.logout
    end
    on LoginPage do |page|
        page.login_user(name, password)
    end
    
end

Then /^I should see the dashboard page$/ do
    on DashboardPage do |page|
        page.show_install_info_element.when_present.click
        page.logout
    end
    on LoginPage do |page|
        page.login_user("admin","admin")
    end
end

Given /^I navigate to Site Editor to edit the current dashboard page$/ do
	on AdministrationViewPage do |page|
		sleep(3)
		page.site_editor_element.fire_event 'mouseover'
		sleep(2)
		page.edit_page_element.when_present.click
	end
end

When /^I add a portlet$/ do
	on AdministrationViewPage do |page|
		page.gw_portlets_element.when_present.click
		sleep(2)
		#@browser.div(:title => "Event Console").simulateDragSortable({ move: 10, -10 });
		#@browser.div(:title => "Event Console").drag_and_drop_by(100, -200)
		
		@browser.div(:title => "Custom Groups").fire_event "onmousedown"
		sleep(2)
		@browser.driver.action.click_and_hold(page.customgroup_element.wd).perform
		sleep(2)
		@browser.driver.action.move_to(page.droppable_area_element.wd).click.perform
		sleep(2)
		@browser.div(:title => "Custom Groups" ).fire_event "onmouseup"
		
		#a = @browser.div(:title => "Event Console")
		#b = @browser.div(:class => "UIRowContainer")
		#a.drag_and_drop_on b
		#sleep(2)
		
		#@browser.driver.action.drag_and_drop(a, b).perform
		page.finish_element.when_present.click
		sleep(5)
	end
	
end
	
Then /^I should see the portlet I added$/ do
	on AdministrationViewPage do |page|
		page.custom_text_element.exists?.should==false
	end
	on CustomGroupPage do |page|
	    page.form_button_element.when_present.click
	end
end

When /^I delete a portlet$/ do
	on AdministrationViewPage do |page|
	#@browser.div(:class)div(:class => /UIComponentBlock/).div(:class => /EDITION-BLOCK EDITION-PORTLET/ ).div(:class => /NewLayer/).when_present.hover
		page.gw_portlets_element.when_present.click
		sleep(2)
		@browser.div(:id => /UIPortlet/).fire_event 'mouseover'
		@browser.div(:id => /UIPortlet/).when_present.click
		sleep(2)
		page.delete_portlet_element.when_present.click
		sleep(3)
		@browser.alert.ok
		sleep(3)
		page.finish_element.when_present.click
		sleep(5)
	end
end

Then /^I should not see the portlet$/ do
	on AdministrationViewPage do |page|
		page.custom_text_element.exists?.should==false
	end
end


Given /^I navigate to Site Editor to add a new page$/ do
	on AdministrationViewPage do |page|
		sleep(5)
		page.site_editor_element.when_present.hover
		sleep(4)
		page.add_page_element.when_present.click
	end
end

Given /^I go to User Management under Groups$/ do
    on AdministrationViewPage do |page|
	 sleep(5)
     page.group_element.fire_event 'mouseover'
	 sleep(2)
	 page.organization_element.fire_event 'mouseover'
     sleep(2)
	 page.user_management_element.when_present.click
    end
end


Given /^I select Search users$/ do
    on AdministrationViewPage do |page|
		page.search_textbox_element.when_present.set 'optimus'
        #page.search_icon_element.when_present.click
		@browser.send_keys :enter
		sleep(3)
    end
end


When /^I delete the user with name "(.*?)"$/ do |name|
    on AdministrationViewPage do |page|
        page.delete_new_user_element.when_present.click
	@browser.alert.ok
    end
    
end
Then /^the user should be deleted$/ do
 on AdministrationViewPage do |page|
 
    page.search_textbox_element.when_present.set 'optimus'
    #page.search_icon_element.when_present.click
	@browser.send_keys :enter
    page.no_results_message_element.when_present.exists?.should == true
		on PreferencePage do |page|
				page.ok
				sleep(5)
			end
 
 end
end
	

#OptimusComment: Added to display build version in results

Given /^Build and version$/ do
on DashboardPage do |page|
        page.show_install_info_element.when_present.click
		info_text = @browser.span(:id => "last_checked").p(:text => /PostgreSQL/).text.split("\n")
        name = info_text.grep(/^name/)[0].split("= ")[1]
        version = info_text.grep(/^version/)[0].split("= ")[1]
		gw_build = info_text.grep(/^gw_build/)[0].split("= ")[1]
		bitrock_build = info_text.grep(/^bitrock_build/)[0].split("= ")[1]
		puts "Name:" + name + " ---- Version:" + version + " ---- GW_build:" + gw_build + " ---- bitrock_build:" + bitrock_build
    end
end
