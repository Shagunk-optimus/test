When /^I apply the filter SYSLOG under Applications$/ do
    on EventconsolePage do |page|
        @browser.div(:class => "iceTreeRow", :index => 1).link(:index => 0).when_present.click
        page.application_syslog_event_element.when_present.click
        page.wait_until(20) do
            page.events_application_types_element.when_present.text == "Events by ApplicationTypes=SYSLOG" 
        end
    end
end

When /^I apply the filter SNMPTRAP under Applications$/ do
    on EventconsolePage do |page|
        @browser.div(:class => "iceTreeRow", :index => 1).link(:index => 0).when_present.click
        page.application_snmptrap_event_element.when_present.click
        page.wait_until(20) do
            page.events_application_types_element.when_present.text == "Events by ApplicationTypes=SNMPTRAP" 
        end
    end
end

When /^I apply the filter last (\d+) min NAGIOS Critical$/ do |arg1|
    on EventconsolePage do |page|
        page.last_10_nagios_critical_element.when_present.click
        page.wait_until(20) do
            page.events_application_types_element.when_present.text == "Events by=Last 10 Minutes NAGIOS Critical"
        end
    end
end

When /^I apply the filter last (\d+) SNMPTRAP Warning$/ do |arg1|
    on EventconsolePage do |page|
        page.last_5_snmptrap_warning_element.when_present.click
        page.wait_until(20) do
                page.events_application_types_element.when_present.text == "Events by=Last 5 SNMPTRAP Warning"
        end
    end
end

When /^I apply the filter nagios Warning$/ do
    on EventconsolePage do |page|
        page.nagios_warning_element.when_present.click
        page.wait_until(20) do
            page.events_application_types_element.when_present.text == "Events by=Nagios Warning"
        end
    end
end

When /^I apply the filter Warning$/ do
    on EventconsolePage do |page|
        page.warnings_element.when_present.click
        page.wait_until(20) do
            page.events_application_types_element.when_present.text == "Events by=Warning"
        end
    end
end

When /^I apply the filter Critical$/ do
    on EventconsolePage do |page|
        page.criticals_element.when_present.click
        page.wait_until(20) do
            page.events_application_types_element.when_present.text == "Events by=Critical"
        end
    end
end

When /^I select (\d+) event$/ do |arg1|
    on EventconsolePage do |page|
        page.number_showing_events_element.when_present.text.to_i.should >= 1
        #cell = @browser.tr(:class => "iceDatTblRow  portlet-section-body Row textRow odd iceRowSel")
        cell = @browser.tr(:id => /contentPanel:icepnltabset:0:eventTableID:0/)
        span_message = cell.span(:id => /txt_textMessage/)
        $message = span_message.text
        span_message.when_present.click
	sleep(4)

    end
end

When /^I perform the action open log message$/ do
    on EventconsolePage do |page|
	sleep(3)
        page.open_log_message_element.when_present.click
	sleep(5)
    end
end

When /^I navigate to operation status open filter$/ do
    on EventconsolePage do |page|
        puts "Message #{$message}"
        page.operation_status_events_open_element.when_present.click
        page.open_filter_element.when_present.click
        page.message_search = $message
        page.search_element.when_present.click
        sleep(10)
    end
end


When /^I perform the action close log message$/ do
    #visit EventconsolePage
    on EventconsolePage do |page|
	sleep(3)
        page.close_log_message_element.when_present.click
	sleep(5)
    end
end


When /^I navigate to operation status close filter$/ do
    on EventconsolePage do |page|
		puts "Message #{$message}"
        page.operation_status_events_open_element.when_present.click
        page.close_filter_element.when_present.click
        page.message_search = $message
        page.search_element.when_present.click
        sleep(10)
    end
end

Then /^the events selected must be display$/ do
    on EventconsolePage do |page|
        page.number_showing_events_element.when_present.text.to_i.should >= 1
        @browser.span(:id => /contentPanel:icepnltabset:0:eventTableID:0:txt_textMessage/).text.should == "#{$message}"
    end
end

Given /^I select all open events$/ do
    on EventconsolePage do |page|
        page.all_open_events_element.when_present.click
    end
end

Given /^I search for the events with the message "(.*?)"$/ do |message|
    on EventconsolePage do |page|
        sleep(5)
        page.message_search = message
    end
end

When /^I click the Search button$/ do
    on EventconsolePage do |page|
        page.search_link
        sleep(5)
    end
end

Then /^I should only see events with the message "(.*?)"$/ do |message|
    on EventconsolePage do |page|
        page.check_events_message(message, 0)
    end
end

Given /^I click on the new tab button$/ do
    on EventconsolePage do |page|
        page.new_tab_element.click
    end
end

Given /^The window for new tab gets display$/ do
    on EventconsolePage do |page|
        page.wait_until do
            sleep(5)
            @browser.span(:class => "iceOutTxt", :text => "All Open Events", :index => 1).exists?
        end
    end
end

Given /^I search for the events with the message "(.*?)" on the new tab$/ do |message|
    on EventconsolePage do |page|
        page.message_search = message
    end
end

When /^I click the Search button on the new tab$/ do
    on EventconsolePage do |page|
        page.search_link
        sleep(5)
    end
end

Then /^I should only see events with the message "(.*?)" on the new tab$/ do |message|
    on EventconsolePage do |page|
        page.check_events_message(message, 1)
    end
end

Given /^I am on Services Configuration page$/ do
    visit ServiceConfigurationPage
end

Given /^I modify max check attempts and disable active checks in generic services$/ do
    on ServiceConfigurationPage do |page|
        page.open_generic_service
        page.set_max_check_attempts
    end
end

Given /^I am on Host Configuration page$/ do
    visit HostsConfigurationPage
end

Given /^I modify max check attempts and disable active checks in generic hosts$/ do
    on HostsConfigurationPage do |page|
        page.open_generic_host
		on ServiceConfigurationPage do |page|
			page.set_max_check_attempts
		end
    end
end


Given /^I select a host and a service$/ do
    on StatusviewerPage do |page|
        #page.services_link
        #page.open_servicegroup_element.when_present.click
        #$hostname = page.get_host(0)
        #page.hosts_link
        #page.select_host("HG1", $hostname, "Linux Servers")
        #sleep(1)
        @browser.span(:class => "iceOutTxt", :text => /Linux Servers/).when_present.click
	@browser.span(:class => "iceOutTxt", :text => /localhost/).when_present.click
	sleep(1)
        page.local_cpu_httpd_element.when_present.click
    end
end

Given /^I select submit passive Check Result with "(.*?)"$/ do |state|
    on StatusviewerPage do |page|
        sleep(5)
        page.submit_check_results(state)
    end
end

When /^I submit and navigate to Event Console$/ do
    on StatusviewerPage do |page|
        page.submit_button
    end
    sleep(15)
    visit EventconsolePage
end

Then /^Event gets display with the status as "(.*?)"$/ do |status|
    on EventconsolePage do |page|
       # page.service_groups_events_element.when_present.click
	page.host_groups_events_element.when_present.click
      #  page.SG1_link_element.when_present(10).click
	page.LS_link_element.when_present(10).click
        sleep(5)
        page.check_event_status($hostname, status)
    end
end
