class AutodiscoveryPage
    include PageObject

    direct_url BASE_URL + "auto-disc"

    @@subtab_title = { "Discovery" => "Auto Configure", "Automation" => "Automation"}
    @@subtab_text = { "Discovery" => "Discovery Definition Name", "Automation" => "Select or define an automation schema"}


    in_frame(:id => 'myframe') do |frame|

        button :delete_filter_localsubnet, :name =>"delete_filter_local subnet", :frame => frame

        button :delete_filter, :name =>"delete_filter_test", :frame => frame
        button :confirm_delete_filter, :name => 'yes', :frame => frame

        select_list :filter_type, :name => 'filter_type', :frame => frame

        text_field :range_filter_name, :name => 'filter_name', :frame => frame
        text_field :range_filter_pattern, :name => 'filter_value', :frame => frame

        button :save_filter, :name => 'add_filter', :frame => frame
        radio_button :control_type, :value => 'Auto', :frame => frame
        checkbox :filter_name, :id => "filter_checked", :frame => frame 
        checkbox :range_filter_name, :value => 'test', :frame => frame

        cell :discovery_in_progress, :text => "Delete discovery?", :frame => frame
        button :start_new_discovery, :name => "clear_discovery", :frame => frame

        button :go, :name => 'go', :text => 'Go >>', :frame => frame
        #button :go, :name => /go/, :value => /Go >>/, :frame => frame
        checkbox :accept_go, :name => 'accept', :frame => frame
        button :go_discover, :name => 'go_discover', :frame => frame
        div :scan_status, :id=> 'status', :frame => frame
		div :method_status_snmp, :id => 'method_status', :text => 'SNMP', :frame => frame
		div :method_status_nmap, :id => 'method_status', :text => 'Nmap TCP', :frame => frame

        button :commit_results, :name => 'commit', :frame => frame
        button :close_scan, :name => 'close', :frame => frame

        radio_button :default_definition, :value => "GroundWork-Discovery-Pro", :frame => frame
        checkbox :test_filter, :value => "test", :frame => frame
        button :delete_hosts_filter, :name => "delete_filter_List of Hosts", :frame => frame

        button :new_discovery_definition, :text => "New", :frame => frame
	button :edit_discovery_definition, :text => "Edit", :frame => frame
        text_field :discovery_definition_name, :name =>  "discover_name_new", :frame => frame
        text_field :discovery_definition_description, :name =>  "description", :frame => frame
        text_field :definition_new_name, :name =>  "new_name", :frame => frame
        select_list :automation_schema, :name => "schema", :frame => frame
        select_list :default_control_type, :name => "auto", :frame => frame
        select_list :discovery_definition_template, :name => "template", :frame => frame
        button :create_group, :name => "create_group", :frame => frame
        button :save_group, :name => "save_group", :frame => frame
	button :delete_group, :name => "delete_group", :frame => frame
		
        checkbox :NmapTCP, :value => "Nmap TCP", :frame => frame
        checkbox :SNMP, :value => "SNMP", :frame => frame
		
	button :yes_discovery_def_delete, :name => "yes", :frame => frame
        radio_button :auto_commit, :value => "Auto-Commit", :frame => frame
        button :close_auto_commit, :value => "Close", :frame => frame

        checkbox :record_checkbox, :id => "record_checked", :frame => frame
        button :process_records, :value => "Process Records", :frame => frame
		#process record and records are different buttons
		button :process_record, :value => 'Process Record', :frame => frame
        button :continue, :value => "Continue", :frame => frame
		
        button :next, :value => "Next >>", :frame => frame
		button :edit_schema, :value => "Edit Schema", :frame => frame
		button :close_scan, :value => "Close", :frame => frame
		button :enable_overrides, :value => "Enable Overrides", :frame => frame
		button :disable_overrides, :value => "Disable Overrides", :frame => frame
		button :add_service, :value => "Add Service", :frame => frame
		button :rename, :value => "Rename", :frame => frame
		button :save, :value => "Save", :frame => frame
		button :delete, :value => "Delete", :frame => frame
		
		checkbox :profiles_host_checked, :name => "profiles_host_checked", :frame => frame
		checkbox :profiles_service_checked, :name => "profiles_service_checked", :frame => frame
		checkbox :parents_checked, :name => "parents_checked", :frame => frame
		checkbox :monarch_groups_checked, :name => "monarch_groups_checked", :frame => frame
		checkbox :hostgroups_checked, :name => "hostgroups_checked", :frame => frame
		checkbox :contactgroups_checked, :name => "contactgroups_checked", :frame => frame
		checkbox :services_checked, :name => "services_checked", :frame => frame
		checkbox :method_filter, :name => "set_filter", :frame => frame
		checkbox :enable_traceroute, :name => "enable_traceroute", :frame => frame
		
		
	
		
		
		radio_button :replace_service, :value => 'replace', :name => 'profiles_service_merge', :frame => frame
		radio_button :replace_parent, :value => 'replace', :name => 'parents_merge', :frame => frame
		radio_button :replace_group, :value => 'replace', :name => 'monarch_groups_merge', :frame => frame
		radio_button :replace_hostgroup, :value => 'replace', :name => 'hostgroups_merge', :frame => frame
		radio_button :replace_contactgroup, :value => 'replace', :name => 'contactgroups_merge', :frame => frame
		radio_button :tcp_syn_scan, :value => 'tcp_syn_scan', :frame => frame
		radio_button :tcp_con_scan, :value => 'tcp_connect_scan', :frame => frame
		radio_button :udp_scan, :value => 'udp_scan', :frame => frame
		
		select :profiles_host, :name => "profiles_host", :frame => frame
		select :monarch_groups, :name => "monarch_groups", :frame => frame
		select :profiles_service, :name => "profiles_service", :frame => frame
		select :hostgroups, :name => "hostgroups", :frame => frame
		select :parents, :name => "parents", :frame => frame
		select :contactgroups, :name => "contactgroups", :frame => frame
		select :service_add, :name => "service_add", :frame => frame
		select :scan_timeout, :name => "timeout", :frame => frame
		
		button :edit_nmap, :name => 'edit_method_Nmap TCP', :frame => frame
		text_field :max_hops, :name =>  "traceroute_max_hops", :frame => frame
		text_field :timeout, :name =>  "traceroute_timeout", :frame => frame
		
	
		
		
		
    end

		
    #def delete_old_filters
     #   if self.delete_filter_element.exists?
      #      self.check_filter_name
       #     @browser.frame(:id => "myframe").button(:name =>"delete_filter_test")
        #    self.confirm_delete_filter
        #end

        #if self.delete_filter_localsubnet_element.exists?
         #   self.delete_filter_localsubnet
          #  self.confirm_delete_filter
        #end
    #end
    
    def delete_old_filters
        if self.delete_filter_localsubnet_element.exists?
            self.delete_filter_localsubnet_element.click
	    sleep(3)
            self.confirm_delete_filter_element.when_present.click
        end
    end


    def add_filter(type, name, pattern)
        self.filter_type = type
        self.range_filter_name = name
        self.range_filter_pattern = pattern
        self.save_filter
    end

    def delete_filter(name)
        filter = @browser.frame(:id => "myframe").button(:name => "delete_filter_#{name}")
        if filter.exists?
            filter.when_present.click
            self.confirm_delete_filter_element.when_present.click
        end
    end

    def launch_autodiscovery
        self.go_element.when_present.click
        #@browser.frame(:id => /myframe/).button(:name => /go/, :value => /Go >>/).when_present.click
		sleep(5)
		if self.discovery_in_progress_element.exists?
            self.start_new_discovery_element.when_present.click
        end
        #self.check_accept_go
		@browser.frame(:id => 'myframe').td(:class => 'row1').text.include? ('WARNING: This process may have an adverse impact on the networked environment. You may also need to disable intrusion detection software or any policies which may prevent the auto-configuration process from running. ')
		self.accept_go_element.when_present.set
        self.go_discover_element.when_present.click
    end
    
    def range_discover
        table = @browser.frame(:id => "myframe").table(:id => "reportTable")
        if table.exists?
            hosts_array = Array.new
            table.rows.each do |row|
                row.cells.each do |cell|
                    if !cell.text.match(/172.28.113.*/).nil?
                        hosts_array << cell.text.gsub(/172.28.113./,'').to_f
                        break
                    end
                end
            end
        end
        hosts_array
    end
	def range_discover_without_SNMP_Scan
        table = @browser.frame(:id => "myframe").table(:id => "reportTable")
        if table.exists?
            hosts_array = Array.new
            table.rows.each do |row|
                row.cells.each do |cell|
                    if !cell.text.match(/172.28.113.*/).nil?
                        hosts_array << cell.text.gsub(/172.28.113./,'').to_f
                        break						
                    end
                end
            end
        end
        hosts_array
    end

    def hosts_discover
        encontrado = false
        table = @browser.frame(:id => "myframe").table(:id => "reportTable")
        if table.exists?
            hosts_array = Array.new
            table.rows.each do |row|
                row.cells.each do |cell|
                    if encontrado
                        if cell.text.match(/172.28.113.*/).nil?
                            hosts_array << cell.text
                        end
                        encontrado = false
                        break
                    elsif !cell.text.match(/172.28.113.*/).nil?
                            encontrado = true
                    end
                end
            end
        end
        hosts_array
    end

    def go_to_subtab(subtab)
        @browser.link(:text => /Auto Discovery/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
        #self.wait_until(10) do
         #   @browser.text.include? @@subtab_title[subtab]
            if subtab == "Discovery"
                @browser.frame(:id => "myframe").td(:class => "column_head").text.include? @@subtab_text[subtab]
            elsif subtab == "Automation"
                @browser.frame(:id => "myframe").td(:class => /wizard_title_heading/).text.include? @@subtab_text[subtab]
            end
        
    end
	
	def click(button)
		if button == 'edit_schema'
			self.edit_schema_element.when_present.click
		elsif button == 'close_scan'
			self.close_scan_element.when_present.click
		elsif button == 'disable_overrides'
			self.enable_overrides_element.when_present.click
		end
	end
	
	def verify_page(button)
		if button == 'close'
			@browser.frame(:id => 'myframe').text.include?("Auto Discovery")
		elsif button == 'edit_schema'
			@browser.frame(:id => 'myframe').text.include?("Modify Automation Schema")
		elsif button == 'disable_overrides'
			@browser.frame(:id => 'myframe').td(:class => 'wizard_title_heading').text.include?(" Override Options  ")
			self.disable_overrides_element.when_present.click
		end
	end
	
	def override
		self.profiles_host_checked_element.when_present.set
		self.profiles_host_element.select('host-profile-snmp-network')
		self.profiles_service_checked_element.when_present.set
		self.profiles_service_element.select('snmp-network')
		self.replace_service_element.when_present.set
		self.parents_checked_element.when_present.set
		self.parents_element.select('localhost')
		self.replace_parent_element.when_present.set
		self.monarch_groups_checked_element.when_present.set
		self.monarch_groups_element.select('auto-registration')
		self.replace_group_element.when_present.set
		self.hostgroups_element.when_present.set
		self.hostgroups_element.select('Linux Servers')
		self.replace_hostgroup_element.when_present.set
		self.contactgroups_checked_element.when_present.set
		self.contactgroups_element.select('nagiosadmin')
		self.replace_contactgroup_element.when_present.set
		self.services_checked_element.when_present.set
		self.service_add_element.select('local_process_snmptt')
		self.add_service_element.when_present.set
	end
			
			
	
end 
