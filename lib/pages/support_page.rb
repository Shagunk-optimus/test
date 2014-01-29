class SupportPage
    include PageObject

    direct_url BASE_URL + '/resources/support' 

    link :support, :text => "Support"
    span :support_text, :text => "Support"
    div :page_title, :class => "BreadcumbsInfoBar ClearFix"

    @@subtab_title = { "Documentation" => "Documentation", "Support" => "GroundWork Connect", "Developer" => "GroundWork Developer Kit (GDK)", "Exchange" => "Exchange", "Community" => "Community"}
    @@subtab_text = { "Documentation" => "Welcome to Bookshelf", "Support" => "Recently Updated", "Developer" => "GroundWork Developer Kit (GDK)", "Exchange" => "GroundWork Monitor Enterprise", "Community" => "What Is GroundWork?"}

    def go_to_subtab(subtab)
        @browser.link(:text => /Resources/).when_present.hover
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
        self.wait_until(10) do
            self.page_title.include? subtab
            if subtab == "Exchange"
                @browser.frame.h3.text.include? @@subtab_text[subtab]
            elsif subtab == "Developer"
                self.page_title.include? @@subtab_title[subtab]
            else
                @browser.frame.h4.text.include? @@subtab_text[subtab]
            end
        end
    end

end
