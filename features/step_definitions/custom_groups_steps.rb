Given /^I am on the Custom groups page$/ do
    visit CustomGroupPage
end

When /^I create a new custom group "(.+)" with type "(.+)" and children "(.+)"$/ do |name, type, children|
    on CustomGroupPage do |page|

		#page.configuration_element.when_present.click
		visit HostsConfigurationPage
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Host groups/).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /New/ ).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /name/).when_present.set 'HG1'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /alias/).set 'HG1'
		
		$selectList = @browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /nonmembers/)
		$selectContent = $selectList.options.map(&:text).each { |element| 
        if element == "localhost"
            $host_array << element
            $selectList.select(element)
		end
		}
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value, /<< Add/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "add").click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "continue").click
		
		#page.control_element.when_present.click
		visit ControlPage # new line added to go to Nagios
			@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /Commit/).click
			@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, 'commit').when_present.click
			sleep(10)
			@browser.frame(:id => "myframe").text.include?('Success')
		
		#page.administration_element.when_present.click
		#page.customgroups_element.when_present.click
        visit CustomGroupPage
		page.form_button_element.when_present(15).click
        page.wait_until do
        page.name_element.exists?
        end

		page.create(name, type, children)
				
    end
end

	
When /^I create a custom group "(.+)" with type "(.+)" and children "(.+)"$/ do |name, type, children|
    on CustomGroupPage do |page|
		#page.customgroups_element.when_present.click
        page.form_button_element.when_present(35).click
        page.wait_until do
        page.name_element.exists?
        end

		page.create(name, type, children)
    end
	end	
	
When /^I save and publish$/ do
    on CustomGroupPage do |page|
		sleep(5)
        page.save_and_publish_element.when_present.click
        #page.error_msg_element.exists?.should == false
    end
end

Then /^I verify status "(.+)" for custom group "(.+)" with type "(.+)"$/ do |status, name, type|
    found = 0
	on CustomGroupPage do |page|
        page.groups_table_element.when_present.to_a.each do |row|
            row.to_a.each do |cell|
                if cell.text == name || cell.text == status
                    found += 1
                end
                break if found == 2
            end
            break if found == 2
        end
        found.should == 2
    end
	
	sleep(35) #sleep increased from 15 to 25 to 35
	
	visit StatusviewerPage
	sleep(5)
	on StatusviewerPage do |page|
        	page.custom_group_element.text == name
    	end
    	
    	visit EventconsolePage
    	on EventconsolePage do |page|
        	page.group_exists?(name, type).should == true
    	end
	
    
end

Given /^I have a Custom group to "(.*?)"$/ do |arg1|
    on CustomGroupPage do |page|
	
        page.groups_table_element.exists?
        page.groups_table_element.exists?.should == true
        page.groups_table_element.rows.should > 1
    end
end

When /^I edit custom group with name "(.+)" and add "(.+)" as a child$/ do |name, host_to_add|
    on CustomGroupPage do |page|
        page.edit(name, host_to_add).should == "OK"
		
		#Optimus Comment: No error comes when 'sleep' is commented.
        #sleep(4)
    end
end


Then /^I verify that changes were done for custom group "(.+)" with type "(.+)" and status "(.+)"$/ do |name, type, status|
found = 0
    on CustomGroupPage do |page|
        page.groups_table_element.when_present.to_a.each do |row|
            row.to_a.each do |cell|
                if cell.text == name || cell.text == status || cell.text == "Linux Servers\nHG1"
                    found += 1
                end
                break if found == 3
            end
            break if found == 3
        end
        found.should == 3
    end
	
	sleep(35) # sleep increased from 25 to 35
	
	visit StatusviewerPage
	on StatusviewerPage do |page|
        	page.select_host(name, "Linux Servers", "HG1")
    	end
    
        visit EventconsolePage
    	on EventconsolePage do |page|
        	if page.group_exists?(name,type)
  
            @browser.link(:id => /naviPanel:systemFilterTree:1-0/).when_present.click
            #custom_group =  @browser.div(:id => /naviPanel:systemFilterTree-d-1-0-c/)
            custom_group =  @browser.div(:id => /naviPanel:systemFilterTree/)
            custom_group.link(:text => /Linux Servers/).when_present.exists?.should == true
       end          
    end
end


When /^I delete the custom group "(.+)"$/ do |name|
    on CustomGroupPage do |page|
        page.delete(name).should == true
    end
end

Then /^I verify that custom group "(.*?)" with type "(.*?)" was deleted$/ do |name, type|
    on CustomGroupPage do |page|
	
		#Optimus Comment: 'sleep' is required for the page to load.
		sleep(2)
		
		page.no_groups_available_element.exists?.should == true
		
    end
	
	sleep(35) #sleep increased from 15 to 35
	
	visit StatusviewerPage
    	on StatusviewerPage do |page|
        	page.custom_group_element.exists?.should == false
    	end
    
    	visit EventconsolePage
    	on EventconsolePage do |page|
		page.group_exists?(name, type).should == false
	end
end

Given /^I create two Custom groups "(.*?)" of type "(.*?)" with child "(.*?)" and "(.*?)" of type "(.*?)" with child "(.*?)"$/ do |cg1, type1, child1, cg2, type2, child2|
    groups = {cg1 => [type1,child1], cg2 => [type2,child2]}
    

		visit ServiceConfigurationPage
		
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Service groups/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /New/, :href => /service_groups&task=new/).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /name/).when_present.set 'SG1'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /alias/).set 'SG1'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /add/).click
		
		#$selectListnew = @browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /host/)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /host/).option(:text => /localhost/).when_present.select
		#$selectContentnew = $selectListnew.options.map(&:text).each { |element| 
        	#$selectListnew.select(element)
		#}
	
		sleep(3)
		#@browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present.select(:name => /services/).select(/local_/)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present.select(:name => /services/).option(:text => /local_/).when_present.select
		
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, 'add_services').click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /save/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /continue/).click
		
		visit ControlPage
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /Commit/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, 'commit').when_present.click
		sleep(10)
		@browser.frame(:id => "myframe").text.include?('Success')
		
		visit CustomGroupPage
	on CustomGroupPage do |page|

            groups.each do |key,value|
            page.form_button_element.when_present(35).click
            page.wait_until do
                page.name_element.exists?
            end
            page.create("#{key}","#{value[0]}","#{value[1]}")
            page.save_and_publish_element.when_present.click
        end
    end
end

When /^I try to edit two Custom groups at the same time$/ do
    sleep(3)
    @browser.checkbox(:name => /:cgListFrm:customGroups:0:/).set
    sleep(2)
    @browser.checkbox(:name => /:cgListFrm:customGroups:1:/).set
	
	on CustomGroupPage do |page|
        #page.custom_group1_element.when_present.check
        #page.custom_group2_element.when_present.check
        page.edit_group
    end
end

Then /^an error "(.*?)" should appear$/ do |arg1|
    on CustomGroupPage do |page|
        page.edit_error_message_element.when_present.exists?.should == true
    end
end

When /^I delete two Custom groups "(.*?)" and "(.*?)" at the same time$/ do |name1,name2|
    @browser.checkbox(:name => /:cgListFrm:customGroups:0:/).set
    @browser.checkbox(:name => /:cgListFrm:customGroups:1:/).set
	
	on CustomGroupPage do |page|
		
		#page.check_custom_group1.check
		#page.check_custom_group2.check
	sleep(5)
        page.delete_group
    end
end

Then /^a warning "(.*?)" should appear$/ do |arg1|
    on CustomGroupPage do |page|
        page.delete_confirm_message_element.exists?.should == true
        page.confirm_delete
    end
end

When /^I try to create an identical custom group with name "(.+)" type "(.+)" and child "(.+)"$/ do |name, type, child|
    on CustomGroupPage do |page|
    	sleep(5)
        page.form_button_element.when_present(35).click
        page.wait_until do
		page.name_element.exists?
        end
	page.create(name, type, child)
    end
end

Then /^an error message should appear$/ do
    on CustomGroupPage do |page|
        page.save_and_publish_element.when_present.click
        page.create_error_message_element.when_present.exists?.should == true
    end
end

Given /^I create a service custom group "(.+)" of type "(.+)" and child "(.+)"$/ do |name,type,child|
    on CustomGroupPage do |page|
        page.form_button_element.when_present(35).click
        page.wait_until do
            page.name_element.exists?
        end
        page.create(name,type,child)
    end
end

When /^I create a custom group "(.+)" of type "(.+)" with the ones created before "(.+)" and "(.+)"$/ do |name,type,cg1,cg2|
    on CustomGroupPage do |page|
        page.form_button_element.when_present(35).click
        page.wait_until do
            page.name_element.exists?
        end
        page.create(name,type,cg1,cg2)
        page.save_and_publish_element.when_present.click
    end
end

Then /^I should see the mixing children error$/ do
    on CustomGroupPage do |page|
        page.mix_error_message_element.when_present.exists?.should == true 
    end
end

Given /^I delete custom groups created$/ do
    @browser.checkbox(:name => /:cgListFrm:customGroups:0:/).set
	on CustomGroupPage do |page|
        #page.check_custom_group1
        page.delete_group
        page.confirm_delete
    end
end

When /^I save$/ do
    on CustomGroupPage do |page|
    	sleep(5)
        page.save_element.when_present.click
        sleep(5)
    end
end

Then /^it should not appear on Status viewer$/ do
    visit StatusviewerPage
    on StatusviewerPage do |page|
        @browser.span(:text => "CG2").exists?.should == false
    end
end

When /^I apply the filter Host Group$/ do
    on EventconsolePage do |page|
        page.filter_type("Host Group")
    end
end

Then /^the groups should be in order$/ do
    @browser.link(:id => /naviPanel:systemFilterTree:n-1-0:j_id22/, :text => "CG1")
    @browser.link(:id => /naviPanel:systemFilterTree:n-1-1:j_id22/, :text => /Linux Servers/)
end

Given /^I delete HG1 Host group$/ do
		on HostconfigurationPage do |page|
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Host groups/).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Modify/ ).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /HG1/ ).when_present.click
		sleep(5)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /delete/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value, /Yes/).click
		
	end	
end


Given /^I delete SG1 Service group$/ do
		on ServiceConfigurationPage do |page|
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Service groups/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Modify/ ).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /SG1/ ).when_present.click
		sleep(5)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /delete/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value, /Yes/).click
	end	
end


When /^I select the existing custom group created and remove all its children$/ do
    on CustomGroupPage do |page|
        page.custom_group1_element.when_present.check
		
		page.edit_group
		sleep(3)
		page.remove_button
		
    end
end

When /^I save and publish the custom group$/ do
    on CustomGroupPage do |page|
    	sleep(5)
        page.save_and_publish_element.when_present.click
        
    end
end

Then /^an error message for selecting children should appear$/ do
	on CustomGroupPage do |page|
        page.child_error_message_element.when_present.exists?.should == true 
	
    end
end


#OptimusComment: Moved step definitions from Bug folder
Given /^I create a custom group "(.*?)" with type "(.*?)" and children "(.*?)" $/ do |name, type, children |
    on CustomGroupPage do |page|
        has_custom_group = false
        if page.CG1_element.exists?
            page.check_CG1
            has_custom_group = true
        end
        if page.CG2_element.exists?
            page.check_CG2
            has_custom_group = true
        end
        if has_custom_group
            page.delete_group
            page.confirm_delete
        end
        page.form_button_element.when_present(35).click
        page.wait_until do
            page.name_element.exists?
        end
        page.create(name, type, children )
        page.save_and_publish_element.when_present.click
    end
end

Given /^I select the custom group created$/ do
    on StatusviewerPage do |page|
        @services_number = page.total_services_element.when_present.text
        page.custom_group
		
    end
end

Then /^I should not open a hostgroup view and delete custom group created "(.*?)"$/ do |name|
    on StatusviewerPage do |page|
        page.total_services_element.when_present.text.should == @services_number
		
		 visit CustomGroupPage
		 on CustomGroupPage do |page|
		 page.groups_table_element.exists?
		 page.groups_table_element.exists?.should == true
         page.groups_table_element.rows.should > 1
		 
		 page.delete(name).should == true
		 
		 end
    end
end



When /^I select the custom group on Event Console of type "(.*?)"$/ do |type|
    on EventconsolePage do |page|
        @showing_number = page.number_showing_events_element.when_present.text
        page.filter_type(type)
        page.custom_group_element.when_present
    end
end

Then /^the custom group should not be highlighted$/ do
    on EventconsolePage do |page|
        page.number_showing_events_element.when_present.text.should == @showing_number
    end
end
