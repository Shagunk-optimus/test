class ConfigurationPage
    include PageObject

    direct_url BASE_URL + "config"

    div :page_title, :class => "BreadcumbsInfoBar ClearFix"

    @@subtab_text = { "Services" => "Clone service", "Profiles" => " Host profiles ", "Hosts" => "Clone host", "Contacts" => "Contacts", "Escalations" => "Escalations", "Commands" => "New", "Time Periods" => "New", "Groups" => "New", "Control" => "Nagios cgi configuration", "Tools" => "Export to files", "Performance" => "Performance Configuration Administration", "Maintenance" => "Device Cleanup", "NoMa" => "Overview", "Configuration Reports" => "List commands", "Downtimes" => "You can add downtimes to your hostgroups", "Recurring Downtimes" => "Manage your recurring downtimes"}

    def go_to_subtab(subtab)
        @browser.link(:text => /Configuration/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
        self.wait_until(10) do
            self.page_title.include? subtab
            index = 1
            if subtab == "Commands" || subtab == "Time Periods" || subtab == "Groups"
                index = 0
            end
            if subtab == "Performance"
                @browser.frame(:id => "myframe").table.text.include? @@subtab_text[subtab]
            elsif subtab == "Maintenance" || subtab == "Configuration Reports" || subtab == "Downtimes" || subtab =="Recurring Downtimes"
                @browser.frame.div(:id => "content").text.include? @@subtab_text[subtab]
            elsif subtab == "NoMa"
                @browser.frame(:id => "myframe").div(:id => "navigation-links").text.include? @@subtab_text[subtab]
            else
                @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:class => "left", :index => index).text.include? @@subtab_text[subtab]
            end
        end
    end

end
