class AdministrationViewPage
    include PageObject

    direct_url BASE_URL + "groundwork-administration"

    @@subtab_title = { "Portal Management" => "Management Portlet", "User Management" => "User management portlet", "Foundation" => "Foundation Administration", "Views" => "NagVis", "CustomGroups" => "Custom Groups entry", "Cloud Hub for VMWare" => "Cloud Hub for VMWare", "GroundWork License" => "GWOS Monitor Enterprise license entry"}
    #@@subtab_text = { "Portal Management" => "Manage  portals", "User Management" => "Create new user", "Foundation" => "Foundation Framework", "Views" => "Welcome admin, to the Views Administration Page", "CustomGroups" => "No CustomGroups Available", "Cloud Hub for VMWare" => "Cloud Hub Configuration wizard for VMWare", "GroundWork License" => "The current license for this GWOS Enterprise Edition installation"}
    @@subtab_text = { "Foundation" => "Foundation Framework", "CustomGroups" => "No CustomGroups Available", "GroundWork Cloud Hub" => "CloudHub Configuration wizard", "GroundWork License" => "The current license for this GWOS Enterprise Edition installation"}

    link :views, :text => "Views", :href => "/portal/auth/portal/groundwork-monitor/admin/nagvis-admin"
    link :customGroups, :text => "CustomGroups", :href => "/portal/auth/portal/groundwork-monitor/admin/customgroupsview"

    button :create_group, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:btn_add"

    text_field :customGroup_name, :class =>"iceInpTxt portlet-form-input-field text"
    select_list :host_name_list, :id =>"jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:createCustomGroupForm:SlctChildren_leftList"

    button :add_host_button, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:createCustomGroupForm:SlctChildren_addBtn"
    button :save_publish_button, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:createCustomGroupForm:btn_publish"

    span :customGroupCreated, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:customGroups:0:groupName"
    span :customGroup_state, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:customGroups:0:groupState"

    checkbox :custom_group, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:customGroups:0:j_id17"
    button :delete_custom_group_button, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:btn_delete"
    button :confirm_delete_custom_group, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:deleteConfirmPanel-accept"

    button :edit_custom_group, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:customGroups:0:j_id17"
    button :remove_host_button, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:editCustomGroupForm:SlctChildren_removeBtn"
    text_field :linux_server_child, :id => "jbpns_2fgroundwork_2dmonitor_2fadmin_2fcustomgroupsview_2fCustomGroupInstanceWindowsnpbj:cgListFrm:customGroups:0:childrenId:0"

    link :user_management, :text => "User Management"
    link :create_user_account, :text => "Create new user account"
    text_field :username, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id44:register-form:username"
    text_field :email, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id44:register-form:email"
    text_field :password, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id44:register-form:password"
    text_field :confirm_password, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id44:register-form:passwordCheck"
    button :submit, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id44:register-form:submit"
    button :submit_role, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id28:register-role-form:submit"
    button :submit_confirmation, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id36:confirm-form:admin"

    link :portal_management, :text => "Portal Management"
    link :groundwork_monitor, :text => "groundwork-monitor"
    link :dashboard, :text => "dashboard"
    link :summary, :text => "summary"
    link :page_layout, :text => "Page layout"
    select_list :center_region, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fdefault_2fAdminPortletWindowsnpbj:j_id66:layoutForm:selectMany_center"
    button :delete_button, :value => "Delete"
    link :date_time, :text => "DateTimeInstance"
    button :add_button, :value => "Add"

    link :search_users, :text => "Search users"
    text_field :search_users_textfield, :id => "_jbpns_2fgroundwork_2dmonitor_2fadmin_2fusers_2fIdentityAdminPortletWindowsnpbj:j_id58:search-user-form:searchString"
    button :search_users_button, :value => "Search users"
    link :delete_user, :text => "Delete"
    button :submit_delete_user, :value => "Submit"
    div :page_title, :class => "BreadcumbsInfoBar ClearFix"
    
    #according to GW 7.0 dashboards
	
	link :group, :text => /Group/
	link :organization, :text => /Organization/
	link :new_staff, :text => /New Staff/
	link :management, :text => /Users and groups management/
	link :site_editor, :text => /Site Editor/
	link :edit_page, :text => /Edit Page/
	link :add_page, :text => /Add New Page/
	link :level_up, :class => /LevelUpArrowIcon/, :title => /Up Level/
	link :save, :text => "Save"
	link :gw_portlets, :text => /Groundwork Portlets/
	link :finish, :title => /Finish/
	link :delete_portlet, :title => /Delete Portlet/
	link :user_management, :text => /Users and groups/
	img :delete_new_user, :title => /Delete User/ 
	
	button :next, :text => /Next/
	button :search_icon, :class => /SimpleSearchIcon/, :nicetitle => /Quick Search/
	button :search_icon_1, :class => /SimpleSearchIcon/, :title => /Quick Search/
	
	
	text_field :user_name, :id => "username"
	text_field :pwd, :id => "password"
	text_field :confirm_pwd, :id => "Confirmpassword"
	text_field :firstname, :id => "firstName"
	text_field :lastname, :id => "lastName"
	text_field :mail, :id => "email"
	text_field :page_name, :id => "pageName"
	text_field :display_name, :id => "i18nizedLabel"
	text_field :search_textbox, :id => /searchTerm/
	span :no_results_message, :text => /No result found/
	
								
	
	
	div :customgroup, :title => "Custom Groups" 
	div :droppable_area, :id => "OneColumnContainer", :class => /UIContainer EdittingContainer/
	div :layout, :text => /Dashboard Layout/
	div :custom_text, :class => /iceOutTxt/, :text => /No CustomGroups Available/
	#end for GW7.0

    in_frame(:id => 'myframe') do |frame|
        link :manage_maps, :text => "Manage Maps", :frame => frame

        text_field :map, :name => "map", :frame => frame
        select_list :map_image_list, :name => "map_image", :frame => frame
        button :submit_button, :name => "submit", :frame => frame

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
		#@browser.div(:class => /UIAction MessageActionBar/).link(:text => /OK/).when_present.click
		#@browser.span(:class => /PopupTitleIcon/).link(:class => /CloseButton/).click
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
        #@browser.ul(:class => /MenuItemContainer/).li(:class => /MenuItem NormalItem/).link(:text => /#{subtab}/).when_present.click
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

end
