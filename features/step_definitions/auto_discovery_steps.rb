Given /^I create a duplicate range-filter with name "(.+?)", type "(.+?)" and range "(.+?)"$/ do |filterName, type, range|
    on AutodiscoveryPage do |page|
        page.delete_old_filters 
        sleep(3)
        page.add_filter(type, filterName, range)
        sleep(3)
        page.filter_type = type
        page.range_filter_name = filterName
        page.range_filter_pattern = range
    end
end 

When /^I try to add the Range\/Filter$/ do
    on AutodiscoveryPage do |page|
        page.save_filter
    end
end

Then /^I should see the duplicate message error for "(.+?)"$/ do |filterName|
    @browser.frame(:id => "myframe").td(:class => "row1").text.include?("A filter named \""+ filterName + "\" already exists").should == true
	on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
    end
end

Given /^I use the default discovery definition$/ do
    on AutodiscoveryPage do |page|
        page.wait_until(10) do
            page.default_definition_element.exists?
        end
        page.select_default_definition
        #OptimusComment: With multiple discovery definitions some processing is done on selecting a discovery definition
		sleep(1)
	page.delete_old_filters #to delete localhost filter during first run
    end
end

Given /^I add a list of hosts to this definition with name "(.+?)", type "(.+?)" and range "(.+?)"$/ do |filterName, type, range|
    on AutodiscoveryPage do |page|
        page.wait_until(10) do
            page.range_filter_pattern_element.exists?
        end
        page.add_filter(type, filterName, range)
    end
end

Given /^I change the mode to auto$/ do
    on AutodiscoveryPage do |page|
        page.select_control_type
    end
end

Then /^the hosts "(.+?)" and "(.+?)" for the filter "(.+?)" should be visible in status viewer$/ do |host1, host2, filterName|
    visit AutodiscoveryPage
    on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
    end
	visit StatusviewerPage
	#OptimusComment: Sleep is required, for the processing required for a host to be available in status viewer
	sleep(15)
    on StatusviewerPage do |page|
        page.search_for_host(host1).should >= 1
        page.search_for_host(host2).should >= 1
    end
end

Then /^I remove the hosts "(.+?)" - "(.+?)" and "(.+?)" - "(.+?)"$/ do |host1, hostName1, host2, hostName2|
    visit HostsConfigurationPage
    on HostsConfigurationPage do |page|
        page.remove_host(host1, hostName1)
		page.remove_host(host2, hostName2)
    end
end

Given /^I create a new auto discovery definition "(.+?)" and select "(.+?)" filter of type "(.+?)" and range "(.+?)"$/ do |defName, filterName, type, range|
    on AutodiscoveryPage do |page|
        page.add_filter(type,filterName,range)
        page.new_discovery_definition
        page.discovery_definition_name = defName
        page.discovery_definition_description= defName
        @browser.frame(:id => "myframe").select(:name => "schema").select("GroundWork-Discovery-Pro")
        @browser.frame(:id => "myframe").select(:name => "auto").select("Auto")
        @browser.frame(:id => "myframe").select(:name => "template").select("GroundWork-Default-Pro")
        page.create_group
    end
end

When /^I Uncheck definition methods$/ do
    on AutodiscoveryPage do |page|
        page.uncheck_NmapTCP
        page.uncheck_SNMP
        page.check_range_filter_name
    end
end

When /^save the definition$/ do
    on AutodiscoveryPage do |page|
        page.save_group
    end
end

Given /^I launch go$/ do
    on AutodiscoveryPage do |page|
        page.go
    end
end

Then /^I should see no method assign message error for "(.+?)"$/ do |name|
    @browser.frame(:id => "myframe").td(:class => "row1").text.include?("There are no methods assigned to \""+ name +"\". You must assign at least one discovery method.")
    on AutodiscoveryPage do |page|			
        page.delete_filter(name)
		page.edit_discovery_definition
		page.delete_group
		page.yes_discovery_def_delete
    end
end

Given /^I add an address filter "(.+?)" of type "(.+?)" with range "(.+?)"$/ do |filterName, type, range|
    on AutodiscoveryPage do |page|
        page.wait_until(10) do
            page.range_filter_pattern_element.exists?
        end
        page.add_filter(type, filterName, range)
    end
end

Given /^I add a new address filter$/ do
    on AutodiscoveryPage do |page|
        page.wait_until(10) do
            page.range_filter_pattern_element.exists?
        end
        page.add_filter("include","Include","172.28.113.152-153")
    end
end

Then /^I should see "(.+?)"-"(.+?)" but not the excluded host "(.+?)" in status viewer and host page$/ do |includeRange, includeHostname, excludeRange|
 
  visit StatusviewerPage
	#OptimusComment: Sleep is required, for the processing required for a host to be available in status viewer
	sleep(15)
    on StatusviewerPage do |page|
        page.search_for_host(includeRange).should >= 1
	end

	visit HostsConfigurationPage
    on HostsConfigurationPage do |page|
	
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Search hosts/).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:id, "val1").when_present.set excludeRange
		sleep(5)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").td(:text => /Nothing found/).exists?.should == true
		
		page.remove_host(includeRange, includeHostname)
		
		end
    
	 end



Then /^I remove the added hosts "(.+?)" and "(.+?)"$/ do |exculdeName, includeName|
    visit AutodiscoveryPage
    on AutodiscoveryPage do |page|
        page.delete_filter(exculdeName)
        page.delete_filter(includeName)
    end
end

Given /^I change the mode to auto commit$/ do
    on AutodiscoveryPage do |page|
        @browser.frame(:id => "myframe").radio(:name => "auto_GroundWork-Discovery-Pro", :index => 2).when_present.set
    end
end

Given /^I specify address range$/ do
    on AutodiscoveryPage do |page|
        page.add_filter("include","auto-commit","172.28.113.205-207")
    end
end

When /^I start the discovery$/ do
    on AutodiscoveryPage do |page|
        page.launch_autodiscovery
        page.wait_until(300) do
            page.scan_status_element.text.include? "Discovery process has completed"
        end
        page.close_auto_commit_element.when_present.click
        @browser.frame(:id => "myframe").radio(:name => "auto_GroundWork-Discovery-Pro", :index => 1).when_present.set
    end
end

Then /^I should see the hosts "(.+?)" in Status viewer$/ do |host|
    visit StatusviewerPage
	#OptimusComment: Sleep is required, for the processing required for a host to be available in status viewer
	sleep(15)
    on StatusviewerPage do |page|
        page.search_for_host(host).should >= 1
    end
end

Then /^I remove the filter "(.+?)" and the host "(.+?)"-"(.+?)"$/ do |filterName, range, hostName|
    visit AutodiscoveryPage
	on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
    end
    visit HostsConfigurationPage
    on HostsConfigurationPage do |page|
        page.remove_host(range, hostName)
    end
end

Given /^I change the mode to interactive$/ do
    @browser.frame(:id => "myframe").radio(:name => "auto_GroundWork-Discovery-Pro", :index => 0).when_present.set
end

Given /^I launch the Auto Discovery with interactive mode$/ do
    on AutodiscoveryPage do |page|
        page.launch_autodiscovery
        page.wait_until(60) do
            page.scan_status_element.text.include? "Discovery stage has completed"
        end
        page.next_element.when_present.click
    end
end


When /^I select process records$/ do
    on AutodiscoveryPage do |page|
        page.wait_until(10) do
            page.record_checkbox_element.exists?
        end
        page.check_record_checkbox
        page.process_records
    end
end 

When /^I select process records and continue$/ do
    on AutodiscoveryPage do |page|
        page.process_record_element.when_present.click
        page.continue_element.when_present.click
	end
end


Then /^the Auto Discovery UI shows properly$/ do
    sleep(10)
	Watir::Wait.until{ @browser.frame(:id => "myframe").td(:class => "data0").td(:class => "head").text.include? "Auto Discovery" }
    #on AutodiscoveryPage do |page|
        #@browser.frame(:id => "myframe").td(:class => "data0").td(:class => "row1").td(:class => "match_selected").radio(:name => "discover_name_select").when_present.set
    #end
end

Given /^I add two overlapping ranges "(.+?)" for filter name "(.+?)" of type "(.+?)"$/ do |range, filterName, type|
    on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
        page.add_filter(type, filterName, range)
        page.select_control_type
        @browser.frame(:id => "myframe").radio(:name => "auto_GroundWork-Discovery-Pro", :index => 1).when_present.set
    end
end

#for last scenario
Given /^I Uncheck SNMP definition method$/ do
    on AutodiscoveryPage do |page|
        page.uncheck_SNMP
        page.check_range_filter_name
    end
end

Then /^the repeated hosts for the range "(.+?)" should be autodiscovered once$/ do |filterName|
    on AutodiscoveryPage do |page|
        array_increments_by?(1,page.range_discover_without_SNMP_Scan).should == true
    end
    visit AutodiscoveryPage
    on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
	end
end

Then /^I should see a correct auto discover without invalid range "(.+?)"$/ do |filterName|
    on AutodiscoveryPage do |page|
        page.range_discover.count.should == 1
    end
    visit AutodiscoveryPage
    on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
    end
end

#OptimusComment: Moved the step definitions from smoke_steps.rb file
Given /^I am on the Auto Discovery page$/ do
    visit AutodiscoveryPage
end

Given /^I launch the Auto Discovery$/ do
    on AutodiscoveryPage do |page|
        page.launch_autodiscovery
        page.wait_until(450) do
            page.scan_status_element.text.include?('All records processed')
        end
    end
end

When /^I commit the results$/ do
    on AutodiscoveryPage do |page|
        page.commit_results
        page.close_scan
    end
end

#Steps for Autodiscovery --> Automation page 

Given /^I am on the Automation page$/ do
	visit AutomationPage
end

And /^I select the "(.+)" button$/ do |button|
	if button == 'close' || button == 'cancel_rename' || button == 'cancel' || button == 'delete'
		on AutomationPage do |page|
			page.automation_schema_element.when_present.set
			page.next_element.when_present.click
			page.click(button)
		end
	
	elsif button == 'edit' || button == 'close_scan' || button == 'disable_overrides'
		on AutodiscoveryPage do |page|
			page.click(button)			
		end
	end
	
end

Then /^I should be redirected to the correct page for "(.+)"$/ do |button|
	if button == 'close' || button == 'cancel_rename' || button == 'cancel' || button == 'delete'
		on AutomationPage do |page|
			page.verify_page(button)
		end
	elsif button == 'edit' || button == 'close_scan' || button == 'disable_overrides'
		on AutodiscoveryPage do |page|
			page.verify_page(button)
		end
	end
end

And /^I create a new automation schema "(.+)"$/ do |schema|
	on AutomationPage do |page|
		page.create_schema(schema)
	end
end

And /^I create a new automation template "(.+)"$/ do |template|
	on AutomationPage do |page|
		page.create_template(template)
	end
end

And /^I save it as a template$/ do
	on AutomationPage do |page|
		page.save_as_template_element.when_present.click
	end
	#	Watir::Wait.until {
    #    @browser.frame(:id => 'myframe').text("Template saved to /usr/local/groundwork/core/monarch/automation/templates/schema-template-\#{template}\.xml").exists?
	#	}
end

And /^I create an automation schema "(.+)" using template "(.+)"$/ do |schema,template|
	on AutomationPage do |page|
		page.create_schema_from_template(schema,template)
	end
end




And /^I "(.+)" the "(.+)"$/ do |action,schema|
	if action == 'delete'
		@browser.frame(:id => 'myframe').radio(:value => schema+"_renamed").when_present.set
	else
		@browser.frame(:id => 'myframe').radio(:value => schema).when_present.set
	end
			on AutomationPage do |page|
				page.next_element.when_present.click
				page.perform(action,schema)
			end
	
end


Then /^the schema "(.+)" should be successfully "(.+)"$/ do |schema,status|
	if status == 'created'
		@browser.frame(:id => 'myframe').text.include? ("Changes to \"#{schema}\" saved to database.")
	elsif status == 'renamed'
		@browser.frame(:id => 'myframe').text.include? (schema+"_renamed")
	elsif status == 'deleted'
		@browser.frame(:id => 'myframe').text.include? ("Removed:")
		@browser.frame(:id => 'myframe').text.include? (" "+schema+" ")
	end
end

And /^I create a new discovery defintion using "(.+)"$/ do |schema|
	on AutodiscoveryPage do |page|
		page.new_discovery_definition
        page.discovery_definition_name = schema
        page.discovery_definition_description= schema
		@browser.frame(:id => "myframe").select(:name => "schema").select(schema)
        @browser.frame(:id => "myframe").select(:name => "auto").select("Auto-Commit")
        page.create_group_element.when_present.click
    end
end

And /^I edit the different parameters for host "(.+)"$/ do |host|
	on AutomationPage do |page|
		page.edit_record_element.when_present.click
		sleep(5)
		#modifying the existing parameters for a host
		page.edit_host(host)
	end
end

Then /^the changes should be reflected on Status Viewer for host "(.+)" and Host Configuration page$/ do |host|
	
	visit StatusviewerPage
	sleep(15)
    on StatusviewerPage do |page|
		page.selecthost("Linux Servers","qa-ubuntu-12-04-64-2-renamed")
	end
		#verify services and instances
		@browser.span(:text => 'http_alive_instance').exists?.should == true
		@browser.span(:text => 'http_alive_instance').when_present.click
		
		@browser.span(:text => /local_load/).exists?.should == true
		@browser.span(:text => /local_load/).when_present.click
		@browser.span(:text => /ssh_alive/).exists?.should == true
		@browser.span(:text => /ssh_alive/).when_present.click
		
		@browser.span(:text => /tcp_ssh/).exists?.should == true
		@browser.span(:text => /tcp_ssh/).when_present.click
	on StatusviewerPage do |page|
        page.search_for_host(host).should >= 1
    end
		@browser.td(:class => 'iceDatTblCol2').span(:text => /qa-ubuntu-12-04-64-2-renamed/).when_present.click
	#verifying host alias name
	
		@browser.span(:id => 'HVform:txthostAlias').text.include? ('qa-ubuntu-12-04-64-2-alias')
	#verifying parent for the host
	
		@browser.link(:id => 'HVform:linkParentPoup', :text => /Parents for this Host/).when_present.click
	sleep(5)
		@browser.link(:id => 'HVform:tblGroupPop:0:lnkParent').text.include? (' localhost')
		@browser.input(:id => 'HVform:btnDependentParentPopClose').when_present.click
	sleep(2)
	
	#verifying hostgroup
		@browser.link(:id => 'HVform:linkGroupPoup', :text => /Groups for this Hosts/).when_present.click
	sleep(5)
		@browser.span(:id => 'HVform:tblDependentParentPop:0:txtMember').text.include? (' Linux Servers')
		@browser.input(:id => 'HVform:btnGroupPopClose').when_present.click
	sleep(2)

	visit HostconfigurationPage
	on HostconfigurationPage do |page|
		page.visit_host_configuration_new
		sleep(5)
	end

	#verifying updated address
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').text_field(:name => /address/).attribute_value("value") == "172.172.172.172"
	
	#verifying contact group
	
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').select(:id => /contactgroup.members/).option(:text => 'nagiosadmin').exists?.should == true
	
	#verifying host profile
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').button(:value => 'Host Profile').when_present.click
	sleep(5)
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').select(:name => 'profile_host').option(:value => 'host-profile-ssh-unix').attribute_value("selected") == ""
	
	#verifying service profile
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').button(:value => 'Service Profiles').when_present.click
	sleep(5)
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').text.include? (' ssh-unix ')
end

And /^I check the Nmap TCP definition method$/ do
	on AutodiscoveryPage do |page|
		page.NmapTCP_element.when_present.check
	end
end

And /^I remove filter "(.+?)"$/ do |filterName|
	visit AutodiscoveryPage
		on AutodiscoveryPage do |page|
			page.delete_filter(filterName)
    end
end

And /^I select the default schema$/ do
	on AutomationPage do |page|
		page.automation_schema_element.when_present.set
		page.next_element.when_present.click
	end
end

And /^I view the data source file$/ do
	on AutomationPage do |page|
		page.view_element.when_present.click
	end
end

Then /^the data source file should not exist$/ do
	@browser.window(:title => /Monarch Auto Config/).when_present.use
	@browser.td(:class => 'error').text.include? (" Data source file does not exist. ")
	@browser.window(:title => /Monarch Auto Config/).when_present.close
	@browser.window(:title => 'automation').when_present.use
end

Then /^the entry for the host "(.+)" "(.+)" should exist in the data source file$/ do |address,hostname|
	@browser.window(:title => /Monarch Auto Config/).when_present.use
	@browser.td(:class => 'row_lt').text.include? (address)
	@browser.td(:class => 'row_lt').text.include? (hostname)
	@browser.window(:title => /Monarch Auto Config/).when_present.close
end

And /^I Enable Overrides and modify the different parameters for "(.+)"$/ do |host|
	on AutodiscoveryPage do |page|
		page.enable_overrides_element.when_present.click
		page.override
	end
end

Then /^changes should reflect on Status Viewer for host "(.+)" "(.+)" and Host Configuration page$/ do |address,host| 
visit StatusviewerPage
	sleep(15)
    on StatusviewerPage do |page|
		page.selecthost("Linux Servers",host)
	end
		@browser.span(:text => 'http_alive').exists?.should == true
		@browser.span(:text => 'http_alive').when_present.click
		
		@browser.span(:text => 'local_process_snmptt').exists?.should == true
		@browser.span(:text => 'local_process_snmptt').when_present.click
		@browser.span(:text => 'snmp_if_1').exists?.should == true
		@browser.span(:text => 'snmp_if_1').when_present.click
		
		@browser.span(:text => 'snmp_ifbandwidth_1').exists?.should == true
		@browser.span(:text => 'snmp_ifbandwidth_1').when_present.click
		
		@browser.span(:text => 'snmp_ifoperstatus_1').exists?.should == true
		@browser.span(:text => 'snmp_ifoperstatus_1').when_present.click
		@browser.span(:text => 'ssh_alive').exists?.should == true
		@browser.span(:text => 'udp_snmp').when_present.click
		@browser.span(:text => 'udp_snmp').exists?.should == true
	
	on StatusviewerPage do |page|
        page.search_for_host(address).should >= 1
    end
		@browser.td(:class => 'iceDatTblCol2').span(:text => /bb-cent5-2/).when_present.click
		
	#verifying parent for the host
	
		@browser.link(:id => 'HVform:linkParentPoup', :text => /Parents for this Host/).when_present.click
	sleep(5)
		@browser.link(:id => 'HVform:tblGroupPop:0:lnkParent').text.include? (' localhost')
		@browser.input(:id => 'HVform:btnDependentParentPopClose').when_present.click
	sleep(2)
	
	#verifying hostgroup
		@browser.link(:id => 'HVform:linkGroupPoup', :text => /Groups for this Hosts/).when_present.click
	sleep(5)
		@browser.span(:id => 'HVform:tblDependentParentPop:0:txtMember').text.include? (' Linux Servers')
		@browser.input(:id => 'HVform:btnGroupPopClose').when_present.click
	sleep(2)

	visit HostconfigurationPage
	on HostconfigurationPage do |page|
		page.visit_host_configuration_new
		sleep(5)
	end
	
	#verifying contact group
	
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').select(:id => /contactgroup.members/).option(:text => 'nagiosadmin').exists?.should == true
	
	#verifying host profile
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').button(:value => 'Host Profile').when_present.click
	sleep(5)
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').select(:name => 'profile_host').option(:value => 'host-profile-snmp-network').attribute_value("selected") == ""
	
	#verifying service profile
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').button(:value => 'Service Profiles').when_present.click
	sleep(5)
	@browser.frame(:id => 'myframe').frame(:name => 'monarch_main').text.include? (' snmp-network ')
end

And /^"(.+)" the definition "(.+)"$/ do |action, definition|
	if action == 'rename'
		on AutodiscoveryPage do |page|
			page.rename_element.when_present.click
			page.definition_new_name_element.when_present.set definition+'_renamed'
			page.rename_element.when_present.click
		end
	elsif action == 'edit'
		@browser.frame(:id => 'myframe').radio(:value => definition).when_present.set
			on AutodiscoveryPage do |page|
				page.edit_discovery_definition_element.when_present.click
			end
			
	elsif action == 'delete'
		if (@browser.frame(:id => 'myframe').button(:text => 'Go >>').exists?)
		
			@browser.frame(:id => 'myframe').radio(:value => definition+'_renamed').when_present.set
			on AutodiscoveryPage do |page|
				page.edit_discovery_definition_element.when_present.click
				page.delete_element.when_present.click
				page.method_filter_element.when_present.set
				page.method_filter_element.when_present.clear
				page.confirm_delete_filter_element.when_present.click
			end
		else
			on AutodiscoveryPage do |page|
				page.delete_element.when_present.click
				page.method_filter_element.when_present.check
				page.method_filter_element.when_present.uncheck
				page.confirm_delete_filter_element.when_present.click
			end
			
		end
	end
	
end

Then /^the definition "(.+)" should be "(.+)"$/ do |definition,action|
	if action == 'renamed'
		@browser.frame(:id => 'myframe').td(:class => 'wizard_title_heading').text.include? (definition+'_renamed')
		on AutodiscoveryPage do |page|
			page.save_element.when_present.click
		end
		@browser.frame(:id => 'myframe').radio(:value => definition+'_renamed').attribute_value("selected") == ""
	
	elsif action == 'deleted'
		@browser.frame(:id => 'myframe').td(:text => definition+'_renamed').exists?.should == false
	end
end

And /^I create a new auto discovery definition "(.+)"$/ do |defName|
	on AutodiscoveryPage do |page|
        page.new_discovery_definition
        page.discovery_definition_name = defName
        page.discovery_definition_description= defName
        @browser.frame(:id => "myframe").select(:name => "schema").select("GroundWork-Discovery-Pro")
        @browser.frame(:id => "myframe").select(:name => "auto").select("Auto")
        @browser.frame(:id => "myframe").select(:name => "template").select("GroundWork-Default-Pro")
        page.create_group
    end
end

And /^I change the Nmap scan timeout mode to "(.+)"$/ do |timeout|
	on AutodiscoveryPage do |page|
		page.edit_discovery_definition_element.when_present.click
		page.NmapTCP_element.when_present.check
		page.SNMP_element.when_present.uncheck
		page.edit_nmap_element.when_present.click
		page.scan_timeout_element.select(timeout)
		page.save_element.when_present.click
		page.save_element.when_present.click
	end
end

And /^I change the Nmap scan type mode to "(.+)"$/ do |scan_type|
	on AutodiscoveryPage do |page|
		page.edit_discovery_definition_element.when_present.click
		page.NmapTCP_element.when_present.check
		page.SNMP_element.when_present.uncheck
		page.edit_nmap_element.when_present.click
			if scan_type == 'TCP SYN SCAN'
				page.tcp_syn_scan.when_present.set
			elsif scan_type == 'TCP CONNECT SCAN'
				page.tcp_con_scan.when_present.set
			elsif scan_type == 'UDP SCAN'
				page.udp_scan.when_present.set
			end
		page.save_element.when_present.click
		page.save_element.when_present.click
	end
end

And /^I launch Auto Discovery$/ do
	on AutodiscoveryPage do |page|
        page.launch_autodiscovery
    end
end

Then /^the discovery should show results of SNMP only$/ do
	#if (@browser.frame(:id => 'myframe').div(:id => 'method_status', :text => /SNMP/).exists?)
	#	@browser.frame(:id => 'myframe').div(:id => 'method_status', :text => /SNMP/).wait_while_present(150)
	#end
	on AutodiscoveryPage do |page|
		page.method_status_snmp_element.wait_while_present(150)
        page.wait_until(150) do
			page.scan_status_element.text.include? "Discovery stage has completed"
        end
	end
	
	
	#if (@browser.frame(:id => 'myframe').div(:id => 'method_status', :text => /SNMP/).exists?)
	#	@browser.frame(:id => 'myframe').div(:id => 'method_status', :text => /SNMP/).wait_while_present
	#end
	#@browser.frame(:id => 'myframe').div(:id => 'method_status', :text => /SNMP/).wait_while_present
	column = @browser.frame(:id => 'myframe').table(:id => "reportTable").row.cells.length
	puts column
	row = @browser.frame(:id => 'myframe').table(:id => "reportTable").rows.length
	puts row
	
	for i in 4..row-1
		for j in 3..column
			status = @browser.frame(:id => 'myframe').table(:id => "reportTable").td(:class => 'discover_info' ,:text => /SNMP SCAN/).exists?
				if status == true
					puts status
				else
					puts status
					raise
				end
		end
	end		
end

Then /^the discovery should show results of Nmap only$/ do
on AutodiscoveryPage do |page|
		page.method_status_nmap_element.wait_while_present(150)
        page.wait_until(150) do
			page.scan_status_element.text.include? "Discovery stage has completed"
        end
	end
	
	column = @browser.frame(:id => 'myframe').table(:id => "reportTable").row.cells.length
	puts column
	row = @browser.frame(:id => 'myframe').table(:id => "reportTable").rows.length
	puts row
	
	for i in 4..row-1
		for j in 3..column
			status = @browser.frame(:id => 'myframe').table(:id => "reportTable").td(:class => 'discover_info' ,:text => /SNMP SCAN/).exists?
			if status == true
				puts status
				raise
			else
				puts status
			end
		end
	end		
end
	

And /^I Uncheck Nmap and check SNMP definition method$/ do
    on AutodiscoveryPage do |page|
       page.NmapTCP_element.when_present.uncheck
	   page.SNMP_element.when_present.check
	   page.save_element.when_present.click
	   
	end
end


And /^I edit default discovery defintion$/ do
	on AutodiscoveryPage do |page|
		page.default_definition_element.when_present.set
		page.edit_discovery_definition_element.when_present.click
	end
end
=begin
And /^I check Nmap and uncheck SNMP definition method$/ do
	on AutodiscoveryPage do |page|
       page.check_NmapTCP
	   page.uncheck_SNMP
	   page.save_element.when_present.click
	   
	end
end

And /^I check Nmap and check SNMP definition method$/ do
	on AutodiscoveryPage do |page|
       page.check_NmapTCP
	   page.check_SNMP
	   page.save_element.when_present.click
	   
	end
end
=end




And /^I "(.+)" Nmap and "(.+)" SNMP definition method$/ do |nmap,snmp|
	if nmap == 'check' || snmp == 'uncheck'
		on AutodiscoveryPage do |page|
			page.NmapTCP_element.when_present.check
			page.SNMP_element.when_present.uncheck
			page.save_element.when_present.click
	    end
	
	elsif nmap == 'uncheck' || snmp == 'check'
		on AutodiscoveryPage do |page|
			page.NmapTCP_element.when_present.uncheck
			page.SNMP_element.when_present.check
			page.save_element.when_present.click
	    end
		
	else
		on AutodiscoveryPage do |page|
			page.NmapTCP_element.when_present.check
			page.SNMP_element.when_present.check
			page.save_element.when_present.click
	    end
	end
end


And /^I edit the default discovery definition$/ do
	on AutodiscoveryPage do |page|
        page.select_default_definition
		page.edit_discovery_definition_element.when_present.click
	end
end
And /^I "(.+)" the Traceroute Option$/ do |status|
	on AutodiscoveryPage do |page|
		if status == 'disable'
			page.uncheck_enable_traceroute
			sleep(5)
		elsif status == 'enable'
			page.check_enable_traceroute
		end
	end
end
Then /^the max hops and timeout fields should be "(.+)"$/ do |status|
	on AutodiscoveryPage do |page|
		if status == 'disabled'
			page.max_hops_element.disabled?.should == true
			page.timeout_element.disabled?.should == true
		elsif status == 'enabled'
			page.max_hops_element.enabled?
			page.timeout_element.enabled?
		end
	end
end

And /^I input "(.+)" in max hops and timeouts fields$/ do |values|
	on AutodiscoveryPage do |page|
		page.check_enable_traceroute
		page.max_hops_element.set values
		page.timeout_element.set values
	end
end

Then /^there should be a validation message$/ do
	@browser.frame(:id => 'myframe').td(:class => 'row1', :text => /The traceroute max hops value must be a positive integer/).exists?.should == true
	@browser.frame(:id => 'myframe').td(:class => 'row1', :text => /The traceroute timeout value must be an integer greater than 1/).exists?.should == true
end
	
	
