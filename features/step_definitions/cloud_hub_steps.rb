Given /^I am on the Cloud Hub page$/ do
    visit CloudHubPage
end

When /^I select VMWare for new connection$/ do
	on CloudHubPage do |page|
		page.vmware_element.when_present.set
		page.add_element.when_present.click
	end
end


When /^I start new configuration and set all fields as "(.+)","(.+)","(.+)","(.+)","(.+)","(.+)"$/ do |displayname,gwserver,vmserver,username,pwd,interval|
	on CloudHubPage do |page|
		page.display_name = displayname
		page.groundwork_server = gwserver
		page.vmware_server = vmserver
		page.username = username
		page.password = pwd
		page.interval = interval
	end
end

When /^I select the Storage View, Network View and Resource Pool View$/ do
	on CloudHubPage do |page|
		page.storage_view_element.set
		page.network_view_element.set
		page.resource_view_element.set
	end
end


When /^I save the connection$/ do
	on CloudHubPage do |page|
		page.save_element.when_present.click
	end
end

	

When /^test connection is done$/ do
	on CloudHubPage do |page|
		page.test_connection_element.wait_until_present
		page.test_connection_element.when_present.click
	end
end

And /^verify connection is established$/ do
		Watir::Wait.until {
		@browser.frame(:id => "myframe").div(:id => /testConResultMsg/).text.include? 'Connection successful!'
		}
end

And /^I navigate to cloud hub home page$/ do
	on CloudHubPage do |page|
		page.home_element.when_present.click
	end
end


Then /^I should navigate to the home page$/ do
	on CloudHubPage do |page|
		page.home.click
	end
end

 
And /^I delete the connection just created$/ do
	on CloudHubPage do |page|
		page.delete_element.when_present.click
		page.wait_until(5) do
			@browser.alert.ok
		end
	end
end
 

Then /^the connection added should be in Stop state$/ do
	@browser.frame(:id => "myframe").td(:class => /serverStatusCol/).div(:class => /redcircle/).click
		
end		


Given /^I start the new connection created$/ do
	on CloudHubPage do |page|
		page.startconnection_element.when_present.click
		sleep(5)
	end
end


Then /^it should be started$/ do
	on CloudHubPage do |page|
		page.green_element.exists?.should == true
	end	
end	

#26
Then /^ESX-Vermont servers should be displayed on the Status viewer and Event console page$/ do
	sleep(240)
	visit StatusviewerPage
	on StatusviewerPage do |page|
	
		#@browser.frame(:id => "myframe").link(:id => "frmTree:pnlTbSet:0:hstTree:n-3:lnkNdClick").span(:text => /ESX:bernina.groundwork.groundworkopensource.com/).exists?.should == true
		#page.wait_until(360) do
			page.esx_bernina_element.exists?.should == true
			page.esx_morges_element.exists?.should == true
			page.esx_thun_element.exists?.should == true
			page.esx_wil_element.exists?.should == true
			page.esx_zurich_element.exists?.should == true
			page.esx_vssvermont_element.exists?.should == true
		#end
		
		end

		visit EventconsolePage
		on EventconsolePage do |page|
		page.host_groups_events_element.when_present.click
		sleep(10)
		page.esx_bernina_element.exists?.should == true
		page.esx_morges_element.exists?.should == true
		page.esx_thun_element.exists?.should == true
		page.esx_wil_element.exists?.should == true
		page.esx_zurich_element.exists?.should == true
		page.vssvermont_element.exists?.should == true
	end			
end	


When /^I click modify button$/ do
	on CloudHubPage do |page|
		page.modify_element.when_present.click
	end
end


When /^I click next button$/ do
	on CloudHubPage do |page|
		page.next_element.when_present.click
	end
end


When /^verify Cloud Hub Configuration page should be opened$/ do
	on CloudHubPage do |page|
		page.cloudhub_element.exists?.should == true
	end	
end

When /^I click delete button$/ do
	on CloudHubPage do |page|
		page.delete_element.when_present.click
		page.wait_until(5) do
			@browser.alert.ok
		end
	end
end

Then /^verify connection should be deleted$/ do
	on CloudHubPage do |page|
	page.wait_until(10) do
		page.testconnection_element.exists?.should == false
	end	
	end	
end


When /^I select a hypervisor service "(.+)"$/ do |service|
	on CloudHubPage do |page|
		page.hypervisor_service_element.when_present.set
end
end


When /^save it$/ do
	on CloudHubPage do |page|
		page.save_element.when_present.click
	end
end


Then /^verify changes are done on Status viewer page$/ do


 visit StatusviewerPage	
		on StatusviewerPage do |page|		
		page.esx_zurich_element.when_present.click
		sleep(2)
		page.linux_host_machine_element.click
		sleep(3)
		#page.wait_until(360) do
		page.cpu_usage_element.exists?.should==true
		sleep(3)
		
				
		page.esx_vssvermont_element.click
		sleep(2)
		page.esx_zurich_element.click
		sleep(3)
		page.cpu_usage_element.exists?.should==true
		sleep(3)
	end	
end


When /^I select a vm service "(.+)"$/ do |service|
		on CloudHubPage do |page|
		page.vm_service_element.when_present.set
end

end

Then /^verify vm changes are done on Status viewer page$/ do
      
	   visit StatusviewerPage	
		on StatusviewerPage do |page|		
		page.esx_zurich_element.click
		sleep(2)
		page.linux_host_machine_element.click
		sleep(3)
		page.cpu_uptime_element.exists?.should==true
		sleep(3)

	   end
end
	

When /^I select RedHat for new connection$/ do
	on CloudHubPage do |page|
		page.redhat_element.when_present.set
		page.add_element.click
		sleep(3)
	end
end


When /^I start new redhat configuration and set all fields as"(.+)","(.+)","(.+)","(.+)","(.+)","(.+)","(.+)","(.+)","(.+)"$/ do |displayname,gwserver,rhserver,entrypoint,rhpwd,storepath,passcode,check_interval,sync_interval|
	on CloudHubPage do |page|
		page.rh_display_name = displayname
		page.rh_groundwork_server = gwserver
		page.rh_server = rhserver
		page.rh_entrypoint = entrypoint
		page.rh_password = rhpwd
		page.rh_storepath = storepath
		page.rh_passcode = passcode
		page.rh_check_interval = check_interval
		page.rh_sync_interval = sync_interval
	end
end

		
	
Then /^rhev servers should be displayed on the Status viewer and Event console page$/ do
	sleep(240)
	visit StatusviewerPage
	on StatusviewerPage do |page|
	
		#page.wait_until(360) do
			page.rhev_vm_element.exists?.should == true
			page.rhev_m_element.exists?.should == true
		#end
	end

		visit EventconsolePage
		on EventconsolePage do |page|
		page.host_groups_events_element.when_present.click
		sleep(10)		
		page.rhev_vm_element.exists?.should == true
		page.rhev_m_element.exists?.should == true
	end			
end			
		
		
When /^verify Cloud Hub Configuration page for RHEVM should be opened$/ do
	on CloudHubPage do |page|
		page.wait_until(5) do
		page.rh_cloudhub_element.exists?.should == true
		end	
	end
end		
		
		
		
		
		
		
		#---------------------
	

When /^I move to next page$/ do
	on CloudHubPage do |page|
		page.next
	end
end


When /^I enter value in hypervisor warning threshold and critical threshold as"(.+)","(.+)"$/ do |hyp_warning_threshold,hyp_critical_threshold|
	on CloudHubPage do |page|
		page.hyp_warning_threshold = hyp_warning_threshold
		page.hyp_critical_threshold = hyp_critical_threshold
	end
end

When /^I enter value in vm warning threshold and critical threshold as"(.+)","(.+)"$/ do |vm_warning_threshold,vm_critical_threshold|
	on CloudHubPage do |page|
		page.vm_warning_threshold = vm_warning_threshold
		page.vm_critical_threshold = vm_critical_threshold
	end
end


And /^threshold validation messages should be displayed$/ do
		Watir::Wait.until {
		@browser.frame(:id => "myframe").div(:id => /controlbg/).text.include? 'Not a valid number.'
		}
end


Then /^different validation messages for redhat connection should appear$/ do
		Watir::Wait.until {
		@browser.frame(:id => "myframe").span(:text => /Display name cannot be empty./).exists?.should==true
		@browser.frame(:id => "myframe").span(:text => /Server name cannot be empty./).exists?.should==true
		@browser.frame(:id => "myframe").span(:text => /Password cannot be empty./).exists?.should==true
		@browser.frame(:id => "myframe").span(:text => /Certificate store cannot be empty./).exists?.should==true
		@browser.frame(:id => "myframe").span(:text => /Certificate password cannot be empty./).exists?.should==true
		}
end  



Then /^verify connection is not established$/ do
       sleep(3)
		@browser.frame(:id => "myframe").div(:text => /GWOS connection failed!/).exists?.should==true
		#@browser.frame(:id => "myframe").div(:id => /testConResultMsg/).text.include? 'RHEV-M server connection failed!' or 'GWOS connection failed!'	
end	


#Then /^verify red hat connection is not established$/ do
 #      sleep(3)
	#	@browser.frame(:id => "myframe").div(:text => /RHEV-M server connection failed!/).exists?.should==true
#end	


Then /^different validation messages should appear$/ do
		Watir::Wait.until {
		@browser.frame(:id => "myframe").span(:text => /Display name cannot be empty./).exists?.should==true
		@browser.frame(:id => "myframe").span(:text => /Server name cannot be empty./).exists?.should==true
		@browser.frame(:id => "myframe").span(:text => /Password cannot be empty./).exists?.should==true
		}
end  


Then /^check interval validation message should be displayed$/ do
		Watir::Wait.until {
		@browser.frame(:id => "myframe").span(:text => /Not a valid number./).exists?.should==true
		}
end

#New steps to verify Views

Given /^I am on the Status page$/ do
	visit StatusviewerPage
end
	
Given /^I am on the Event page$/ do
	visit EventconsolePage
end
	
Given /^I verify the "(.+?)" hosts on Status viewer page$/ do |view|
	on StatusviewerPage do |page|
		sleep(5)
		page.status_verify(view)
	end
end
Then /^the hosts should be visible$/ do

end

Given /^I verify the "(.+?)" hosts on Event console page$/ do |view|		
	on EventconsolePage do |page|
		page.host_groups_events_element.when_present.click
		sleep(5)
		page.event_status_verify(view)
	end
end
