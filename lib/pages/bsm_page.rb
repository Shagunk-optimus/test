class BSMPage
    include PageObject

    	direct_url BASE_URL + "business-tools"
	
	div :page_title, :class => "BreadcumbsInfoBar ClearFix"

	 link :hostname, :href => "http://qa-ubuntu-12-4-64.groundwork.groundworkopensource.com/portal-statusviewer/urlmap?host=localhost"
	
	@@subtab_text = { "Business Service Monitoring" => "Business", "SLA Management" => "Service level Management", "SLA Reports" => "Reports", "SLA" => "SLA", "Calendar" => "Calendars", "Holidays" => "Holidays", "Operation Time" => "Manage your operation time!", "Contracts" => "Manage contracts!", "Downtimes" => "Downtimes" }
	
	def go_to_subtab(subtab)
	
		if subtab == "SLA" || subtab == "Calendar" || subtab == "Holidays" || subtab == "Operation Time" || subtab == "Contracts" || subtab == "Downtimes"
			@browser.link(:text => /Business/).fire_event 'mouseover'
			@browser.link(:text => /SLA Management/).fire_event 'mouseover'
			@browser.link(:text => /#{subtab}/).when_present.click
		else
			@browser.link(:text => /Business/).fire_event 'mouseover'
			@browser.link(:text => /#{subtab}/).when_present.click
		end
	end
	
	
	def check_subtab(subtab)
        self.wait_until(10) do
            self.page_title.include? subtab
            @browser.frame(:id => "myframe").div(:id => 'content').text.include? @@subtab_text[subtab]
		end
	end	
end
