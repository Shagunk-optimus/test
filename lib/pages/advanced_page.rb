class AdvancedPage
    include PageObject

    direct_url BASE_URL + "nagios"

    div :page_title, :class => "BreadcumbsInfoBar ClearFix"

    @@subtab_title = { "Network Graphing" => "Cacti", "Protocol Analyzer" => "ntop", "Network Map" => "weathermap", "Network Discovery" => "Nedi", "Nagios" => "Tactical View"}
    @@subtab_text = { "Network Graphing" => "You are now logged into Cacti", "Protocol Analyzer" => "About", "Network Map" => "Welcome", "Network Discovery" => "Devices", "Nagios" => "Monitoring Performance"}

    def go_to_subtab(subtab)
        @browser.link(:text => /Advanced/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
        self.wait_until(10) do
            self.page_title.include? subtab
            if subtab == "Protocol Analyzer"
                @browser.frame(:id => "myframe").td(:class => "ThemeOfficeMainItem").text.include? @@subtab_text[subtab]
            elsif subtab == "Network Map"
                @browser.frame(:id => "myframe").div(:class => "dlgTitlebar").text.include? @@subtab_text[subtab]
            elsif subtab == "Network Discovery"
                @browser.frame(:id => "myframe").span(:class => "ThemeNMainFolderText").text.include? @@subtab_text[subtab]
            elsif subtab == "Nagios"
                @browser.frame(:id => "myframe").td(:class => "perfTitle").text.include? @@subtab_text[subtab]
            else
                @browser.frame(:id => "myframe").div(:id => "main").text.include? @@subtab_text[subtab]
            end
        end
    end

end
