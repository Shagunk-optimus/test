class ViewPage
    include PageObject

    direct_url BASE_URL + "nagvis"

    in_frame(:id => 'myframe') do |frame|
	
	span :options, :text => "Options", :id => "wui-ddheader", :frame => frame
	link :managemap, :text => /Manage Maps/, :frame => frame
	select :renamemapdrop, :name => 'map', :frame => frame
	text_field :entermap, :name => 'map_new_name', :frame => frame
	button :rename, :value => 'Rename', :frame => frame
	span :verifyrename, :text => "Open", :frame => frame
	link :openmap, :text => 'Maps', :frame => frame
	link :map1, :id => /map-testmap-icon/, :frame => frame
	link :map2, :id => /map-World-icon/, :frame => frame
	link :map9, :id => /map-testgw-icon/, :frame => frame
	link :geooffice, :id => /map-GeoOffice-icon/, :frame => frame
	link :autohost, :id => /map-auto_hostgroups-icon/, :frame => frame
	link :map5, :id => /map-PublicWeb-icon/, :frame => frame
	link :SANJOSE, :text => /SanJoseSAN/, :frame => frame
	link :newmap, :id => /map-testmap123-icon/, :frame => frame
	span :usermenu, :text => /User menu/, :id => "user-ddheader", :frame => frame
	link :manageuser, :text => /Manage Roles/, :frame => frame
	span :editmap, :text => /Edit Map/, :id => /map-ddheader/, :frame => frame
	link :addicon, :id => /map-addicon-ddheader/, :frame => frame
	link :addline, :id => /map-addline-ddheader/, :frame => frame
	link :addhost, :text => /Host/, :frame => frame
	link :serviceline, :text => /Service/, :frame => frame
	img :background, :id => /backgroundImage/, :frame => frame
	select :modifymapdrop, :id => 'roleId', :frame => frame
	checkbox :selectcheck, :name => 'perm_1', :frame => frame
	checkbox :selectcheck1, :name => 'perm_12', :frame => frame
	checkbox :selectcheck2, :name => 'perm_19', :frame => frame
	button :saveuser, :id => 'submit', :frame => frame
	img :object, :alt => /host-localhost/, :frame => frame
	img :object1, :alt => /host-bsm-host/, :frame => frame
	div :header, :id => /header/, :frame => frame
	link :unlock, :text => /Unlock/, :frame => frame
	link :modify, :text => 'Modify object', :frame => frame
	select :localhost, :value => 'localhost', :id => 'host_name', :frame => frame
	select :bsmhost, :value => 'bsm-host', :id => 'host_name', :frame => frame
	link :map6, :text => /World/, :frame => frame
	select :hostname, :id => "host_name", :name => "host_name", :frame => frame
	select :hostgroup, :id => "hostgroup_name", :name => "hostgroup_name", :frame => frame
	select :servicegroup, :id => "servicegroup_name", :name => "servicegroup_name", :frame => frame
	select :service_desc, :id => /service_description/, :name => /service_description/, :frame => frame
	button :modify_button, :id => /commit/, :name => /submit/, :frame => frame
	link :lockunlock, :text => 'Lock/Unlock all', :frame => frame
	link :lock, :text => /Lock/, :frame => frame
	img :hostadded, :alt => 'host-bsm-host', :frame => frame 
	link :hostadded1, :href => '/portal-statusviewer/urlmap?host=bsm-host', :frame => frame 
	img :serviceadded, :src => '/nagvis_share/userfiles/images/iconsets/std_big_ok.png', :frame => frame 
	#img :hostgroupadded, :src => '/nagvis_share/userfiles/images/iconsets/std_big_unknown.png', :frame => frame 
	img :hostgroupadded, :alt => "hostgroup-HGNagvis", :frame => frame 
	#img :servicegroupadded, :src => '/nagvis_share/userfiles/images/iconsets/std_big_ok.png', :frame => frame 
	img :servicegroupadded, :alt => "servicegroup-SGNagvis", :frame => frame
	
	link :serviceadded1, :href => '/portal-statusviewer/urlmap?host=bsm-host&service=bsm-service-01', :frame => frame
	#img :serviceadded, :id => /link1/, :frame => frame 
	link :delhostobject, :text => /Delete object/, :frame => frame
	link :addspecial, :id => /map-addspecial-ddheader/, :frame => frame
	link :specialtextbox, :text => /Textbox/, :frame => frame
	text_field :textname, :id => /text/, :name => /text/, :frame => frame
	checkbox :selectnegative, :name => /toggle_w/, :frame => frame
	checkbox :selectnegative1, :name => /toggle_h/, :frame => frame
	span :textboxadded, :text => /textbox/, :frame => frame
	link :mapoptions, :text => /Map Options/, :frame => frame
	select_list :mapbackgrnd, :id => /map_image/, :frame => frame
	checkbox :selectalias, :name => /toggle_alias/, :frame => frame
	text_field :aliasname, :id => /alias/, :frame => frame
	checkbox :selectcolor, :name => /toggle_background_color/, :frame => frame
	text_field :backcolor, :id => /background_color_inp/, :frame => frame
	select :mapiconset, :id => /iconset/, :frame => frame
	img :modifybackgrnd, :src => '/nagvis_share/userfiles/images/maps/OfficeLan.png', :frame => frame
	img :modifyicon, :src => '/nagvis_share/userfiles/images/iconsets/earth_up.png', :frame => frame

#manage background scenario
	link :managebackgrnd, :text => /Manage Backgrounds/, :frame => frame
	text_field :imagename, :name => /image_name/, :frame => frame
	text_field :imagecolor, :id => /image_color/, :frame => frame
	text_field :imagewidth, :name => /image_width/, :frame => frame
	text_field :imageheight, :name => /image_height/, :frame => frame
	file_field :uploadimage, :class => /upload/, :name => /image_file/, :frame => frame
	file_field :uploadmap, :class => /upload/, :name => /map_file/, :frame => frame
	button :upload_submit, :value => /Upload/, :name => /submit/, :frame => frame
	select :deletebackgrnd, :name => /map_image/, :frame => frame
	button :deletesubmit, :value => /Delete/, :name => /submit/, :frame => frame
	button :import_submit, :value => /Import/, :name => /submit/, :frame => frame
	
#manage shape
	link :manageshape, :text => /Manage Shapes/, :frame => frame
	link :addshape, :text => /Shape/, :frame => frame
	select :shapeicon, :name => /icon/, :frame => frame
	select :icondelete, :name => /image/, :frame => frame
	img	:iconshape, :src => /test-shape.png/, :frame => frame
	
#export & error static map
	span :action, :id => /action-ddheader/, :frame => frame
	link :export_to_static, :text => /Export to static map/, :frame => frame
	text_field :target, :id => /target/, :frame => frame
	link :staticmap, :text => /statictest/, :frame => frame
	td :error_staticmap, :text => /Invalid target option given./, :frame => frame
	
#error message in making child a parent of its parent map
	checkbox :selectparent, :name => /toggle_parent_map/, :frame => frame
	select :parentmap, :id => /parent_map/, :frame => frame
	
#add container
	link :addcontainer, :text => /Container/, :frame => frame
	text_field :containerurl, :name => /url/, :frame => frame
	text_field :contwidth, :name => /w/, :frame => frame
	text_field :contheight, :name => /h/, :frame => frame
	img :ebay, :id => /gh-logo/, :frame => frame
	td :urlerror, :text => /The attribute needs to be set./, :frame => frame
	div :containerdelete, :id => /-label/, :frame => frame
	
#add stateless line
	link :addstateless, :text => /Stateless Line/, :frame => frame
	canvas :stateline, :id => /canvas1/, :frame => frame
	img :stateline1, :id => /-link1/, :frame => frame
	#img :stateline1, :src => '/nagvis_share/userfiles/images/iconsets/20x20.gif', :frame => frame

#add icon as a service
	link :addservice, :text => /Service/, :frame => frame
	img :serviceicon, :src => '/nagvis_share/userfiles/images/iconsets/std_big_ok.png', :frame => frame
	link :addhostgroup, :text => /Hostgroup/, :frame => frame
	link :addservicegroup, :text => /Servicegroup/, :frame => frame
	
#add icon as a map	
	link :addmapicon, :text => /Map/, :frame => frame
	select :mapname, :name => "map_name", :frame => frame
	img :mapicon, :alt => 'map-GeoOffice', :frame => frame
	#img :mapicon, :src => '/nagvis_share/userfiles/images/iconsets/std_big_up.png', :frame => frame
	#img :geooffice, :src => '/nagvis_share/userfiles/images/maps/OfficeLan.png', :frame => frame

#add line as host
	link :linehost, :text => /Host/, :frame => frame
	img :lineadded, :src => "/nagvis_share/userfiles/images/iconsets/20x20.gif", :frame => frame
	
	
	
	
	                        
#add a line as map
	link :linemap, :text => /Map/, :frame => frame
	img :icon1, :id => /-icon/, :frame => frame
	
	span :open, :text => "Open", :frame => frame
		link :deleted_map, :text => /test_map/, :frame => frame
		
        link :manage_maps, :text => "Manage Maps", :frame => frame
        link :verify_maps, :text => /gjuik/, :frame => frame
		
        text_field :map, :name => "map", :frame => frame
        select_list :map_image_list, :name => "map_image", :frame => frame
        button :submit_button, :name => "submit", :frame => frame
		select :iconset, :name => "map_iconset", :frame => frame
		
		select :delete_map, :id => "table_map_delete", :name => "map", :frame => frame
		button :delete_button, :id => "commit", :frame => frame
		
        link :map_addicon_ddheader, :id => "map-addicon-ddheader", :frame => frame
        link :host_link, :text => "Host", :frame => frame
        image :background_image, :id => "background", :frame => frame
        select_list :hostname_list, :id => "host_name", :frame => frame

        select_list :view_type_list, :id => "view_type", :frame => frame
        select_list :gadget_url_list, :id => "gadget_url", :frame => frame

        text_field :x_text_field, :id => "x", :frame => frame
        text_field :y_text_field, :id => "y", :frame => frame

        link :service_link, :text => "Service", :frame => frame
        select_list :service_description_list, :id => "service_description", :frame => frame

        link :hostgroup_link, :text => "Hostgroup", :frame => frame
        select_list :hostgroup_list, :id => "hostgroup_name", :frame => frame

        link :servicegroup_link, :text => "Servicegroup", :frame => frame
        select_list :service_name_list, :id => "servicegroup_name", :frame => frame

        image :test_map_image, :src => /TestMap/, :frame => frame

        link :test_map_link, :text => "TestMap", :frame => frame
        link :map_link, :text => "Map", :frame => frame
        select_list :map_name_list, :id => "map_name", :frame => frame
        image :performance_map_image, :id => "icon_map_0", :frame => frame
		link :views, :text => "Views"
		table :error, :id => "messageBox"
	end
    
	
	def icon_select(option)
		self.map9_element.when_present.click
		sleep(3)
		self.editmap_element.fire_event 'mouseover'
		self.addicon_element.fire_event 'mouseover'
		
		if option == 'host'
			self.addhost_element.when_present.click
			self.background_element.when_present(40).click
			self.hostname = "bsm-host"
		elsif option == 'service'
			self.addservice_element.when_present.click
			sleep(2)
			self.background_element.when_present(40).click
			self.hostname = "bsm-host"
			sleep(3)
			self.service_desc = /bsm-service-01/
		elsif option == 'hostgroup'
			self.addhostgroup_element.when_present(40).click
			self.background_element.when_present(40).click
			self.hostgroup = 'HGNagvis'
		elsif option == 'servicegroup'
			self.addservicegroup_element.when_present(40).click
			self.background_element.when_present(40).click
			self.servicegroup = 'SGNagvis'
		elsif option == 'map'
			self.addmapicon_element.when_present.click
			sleep(2)
			self.background_element.when_present.click
			sleep(2)
			self.mapname = "GeoOffice"
		end
		
		self.modify_button_element.when_present.click
		sleep(5)
	 end
	
	def icon_verify(option)
		if option == 'host'
			self.hostadded_element.fire_event('click')
			sleep(5)
			@browser.span(:id => "HVform:txthostName", :text => /bsm-host/).exists?.should == true
		elsif option == 'service'
			self.serviceadded_element.fire_event('click')
			sleep(5)
			@browser.span(:id => "SVform:SHtxtServiceName", :text => /bsm-service-01/).exists?.should == true
		elsif option == 'hostgroup'
			self.hostgroupadded_element.fire_event('click')
			sleep(5)
			@browser.span(:id => "HGVform:hghtxtHostGroup", :text => /HGNagvis/).exists?.should == true
		elsif option == 'servicegroup'	
			self.servicegroupadded_element.fire_event('click')
			sleep(5)
			@browser.span(:id => "SGVform:SGHtxtServiceGroupName", :text => /SGNagvis/).exists?.should == true
		elsif option == 'map'
			self.mapicon_element.fire_event('click')
			sleep(3)
			@browser.frame(:id => "myframe").img(:src => '/nagvis_share/userfiles/images/maps/OfficeLan.png').exists?.should == true
		end
	end
	
	def icon_delete(option)
		self.map9_element.when_present.click
		if option == 'host'
			#self.hostadded_element.fire_event 'mouseover'
			self.hostadded_element.when_present.right_click
			sleep(3)
			self.unlock_element.when_present.click
			sleep(1)
			#self.hostadded_element.fire_event 'mouseover'
			self.hostadded_element.when_present.right_click
			self.delhostobject_element.when_present.click
			@browser.alert.ok
			sleep(3)
			self.hostadded_element.exists?.should == false
		elsif option == 'service'
			#self.icon1_element.fire_event 'mouseover'
			self.icon1_element.when_present.right_click
			sleep(3)
			self.unlock_element.when_present.click
			sleep(1)
			#self.icon1_element.fire_event 'mouseover'
			self.icon1_element.when_present.right_click
			self.delhostobject_element.when_present.click
			@browser.alert.ok
			sleep(3)
			self.serviceadded_element.exists?.should == false
		elsif option == 'hostgroup'
			#self.hostgroupadded_element.fire_event 'mouseover'
			self.hostgroupadded_element.when_present.right_click
			sleep(3)
			self.unlock_element.when_present.click
			sleep(1)
			#self.hostgroupadded_element.fire_event 'mouseover'
			self.hostgroupadded_element.when_present.right_click
			self.delhostobject_element.when_present.click
			@browser.alert.ok
			sleep(3)
			self.hostgroupadded_element.exists?.should == false
		elsif option == 'servicegroup'	
			#self.servicegroupadded_element.fire_event 'mouseover'
			self.servicegroupadded_element.when_present.right_click
			sleep(3)
			self.unlock_element.when_present.click
			sleep(1)
			#self.servicegroupadded_element.fire_event 'mouseover'
			self.servicegroupadded_element.when_present.right_click
			self.delhostobject_element.when_present.click
			@browser.alert.ok
			sleep(3)
			self.servicegroupadded_element.exists?.should == false
		elsif option == 'map'
			self.mapicon_element.fire_event 'mouseover'
			self.mapicon_element.when_present.right_click
			sleep(3)
			self.unlock_element.when_present.click
			sleep(1)
			self.mapicon_element.fire_event 'mouseover'
			self.mapicon_element.when_present.right_click
			self.delhostobject_element.when_present.click
			@browser.alert.ok
			sleep(3)
			self.mapicon_element.exists?.should == false
		end
	end
	
		
		
	
	def line_select(option)
		self.map9_element.when_present.click
		sleep(3)
		self.editmap_element.fire_event 'mouseover'
		self.addline_element.fire_event 'mouseover'
		if option == 'host'
			self.linehost_element.fire_event('click')
			sleep(4)
			self.background_element.when_present.click
			sleep(4)
			self.background_element.drag_and_drop_by 200, -200
			sleep(4)
			self.background_element.fire_event('click')
			sleep(2)
			self.hostname = "bsm-host"
		elsif option == 'service'
			self.serviceline_element.fire_event('click')
			self.background_element.when_present.click
			self.background_element.drag_and_drop_by 200, -200
			self.background_element.fire_event('click')
			sleep(2)
			self.hostname = "bsm-host"
			sleep(3)
			self.service_desc = /bsm-service-01/
		elsif option == 'hostgroup'
			self.addhostgroup_element.when_present(40).click
			self.background_element.when_present(40).click
			self.background_element.drag_and_drop_by 200, -200
			self.background_element.fire_event('click')
			sleep(2)
			self.hostgroup = 'HGNagvis'
		elsif option == 'servicegroup'
			self.addservicegroup_element.when_present(40).click
			self.background_element.when_present(40).click
			self.background_element.drag_and_drop_by 200, -200
			self.background_element.fire_event('click')
			sleep(2)
			self.servicegroup = 'SGNagvis'
		elsif option == 'map'
			self.linemap_element.fire_event('click')
			self.background_element.when_present.click
			self.background_element.drag_and_drop_by 200, -200
			self.background_element.fire_event('click')
			sleep(2)
			self.mapname = "GeoOffice"
		end
		self.modify_button_element.when_present.click
		sleep(3)
		self.lineadded_element.fire_event('click')
		sleep(5)
	 end
	 
	 def line_verify(option)
		if option == 'host'
			@browser.span(:id => "HVform:txthostName", :text => /bsm-host/).exists?.should == true
			sleep(2)
		elsif option == 'service'
			@browser.span(:id => "SVform:SHtxtServiceName", :text => /bsm-service-01/).exists?.should == true
		elsif option == 'hostgroup'
			sleep(5)
			@browser.span(:id => "HGVform:hghtxtHostGroup", :text => /HGNagvis/).exists?.should == true
		elsif option == 'servicegroup'	
			sleep(5)
			@browser.span(:id => "SGVform:SGHtxtServiceGroupName", :text => /SGNagvis/).exists?.should == true
		elsif option == 'map'
			@browser.frame(:id => "myframe").img(:src => '/nagvis_share/userfiles/images/maps/OfficeLan.png').exists?.should == true
			sleep(3)
			#visit StatusviewerPage
			#self.geooffice_element.exists?.should == true
		end
	end
	
	

	
	
	
	
	
	
	
	
	





	
	
	
	def modify_user(gwuser)
		self.modifymapdrop_element.option(:text => gwuser).when_present.select
	end
	
	
	def rename_map(oldname, newname)
		self.renamemapdrop_element.option(:value => oldname).when_present.select
		self.entermap_element.value = newname
		self.rename_element.when_present.click
		sleep(2)
		@browser.alert.ok
		sleep(10)
	end		
	
	def select_map(newname)
		if newname == 'testmap'
			self.map1_element.when_present.click
			sleep(5)
		elsif newname == 'World'
			self.map2_element.when_present.click
			sleep(5)
		elsif newname == 'PublicWeb'
			self.map5_element.when_present.click
			sleep(5)
		end
	end
	
	  
   def create_user(name, password, email)
        self.create_user_account_element.when_present.click
        self.wait_until(5) do
            self.username_element.exists?
        end
        self.username = name
        self.email = email
        self.password = password
        self.confirm_password = password
        self.submit
        self.submit_role_element.when_present.click
        self.submit_confirmation_element.when_present.click
    end
    
    def create_new_user(name, password, firstname, lastname, email)
        
        self.user_name = name
        self.pwd = password
        self.confirm_pwd = password
		self.firstname = firstname
		self.lastname = lastname
		self.mail = email
        self.save_element.click
		sleep(3)
		@browser.span(:class => /PopupTitleIcon/).link(:class => /CloseButton/).click
    end

    def delete_user(user)
        self.wait_until(10) do
            self.search_users_textfield_element.exists?
        end
        self.search_users_textfield = user
        self.search_users_button_element.when_present.click
        sleep(2)
        self.delete_user_element.when_present.click
        self.submit_delete_user_element.when_present.click
    end

    def go_to_subtab(subtab)
        @browser.link(:text => /GroundWork Administration/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
        self.wait_until(10) do
            self.page_title.include? subtab
            if subtab == "Foundation" || subtab == "Views"
                @browser.frame(:id => "myframe").h1.text.include? @@subtab_text[subtab]
            elsif subtab == "GroundWork Cloud Hub"
                @browser.frame(:id => "myframe").div(:id => "container").text.include? @@subtab_text[subtab]
            else
                @browser.text.include? @@subtab_text[subtab]
            end
        end
    end


	def delete_map(delete_name)
		@browser.frame(:id => 'myframe').table(:id => "table_map_delete").td(:class => "tdfield").select(:name => "map").option(:text => delete_name).select
		self.delete_button_element.when_present.click
		@browser.alert.ok
	
	end
end
