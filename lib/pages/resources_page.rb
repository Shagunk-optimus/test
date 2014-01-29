class ResourcesPage
    include PageObject

    direct_url BASE_URL + 'resources' 

	link :preference, :text => "Support"
    #link :support, :text => "Support"
    span :support_text, :text => "Support"
    div :page_title, :class => "BreadcumbsInfoBar ClearFix"
	

    @@subtab_text = { "Documentation" => "Welcome to Bookshelf 7", "Support" => "Recently Updated"}
	

    def go_to_subtab(subtab)
		@browser.link(:text => /Resources/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
		@browser.frame(:src => /kb.groundworkopensource.com/).div(:class => /wiki-content/).text.include? @@subtab_text[subtab]
	end

end
