Given(/^I select the dashboard "(.*?)" subtab$/) do |subtab|
    on DashboardPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the dashboard subtab "(.*?)" should appear$/) do |subtab|
    on DashboardPage do |page|
        page.check_subtab(subtab)
    end
end

Given(/^I am on the My Groundwork page$/) do
    visit MyGroundworkPage
end

Given(/^I select the my groundwork subtab "(.*?)"$/) do |subtab|
    on MyGroundworkPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the my groundwork subtab "(.*?)" should appear$/) do |subtab|
    on MyGroundworkPage do |page|
        page.check_subtab(subtab)
    end
end

Then(/^The event console page should appear$/) do
    on EventconsolePage do |page|
        page.page_title_element.when_present.text.should == "Event Console"
        @browser.text.include?("All Open Events").should == true
    end
end

Then(/^the status viewer page should appear$/) do
    on StatusviewerPage do |page|
        page.page_title_element.when_present.text.should == "Status"
        @browser.text.include?("Monitoring Statistics :").should == true
    end
end

Then(/^the nagvis view page should appear$/) do
    on NagvisViewsPage do |page|
        page.page_title_element.when_present.text.should == "Views"
        page.check_tab
    end
end

Given(/^I am on the Reports page$/) do
    visit ReportsPage
end

Given(/^I select the reports "(.*?)" subtab$/) do |subtab|
    on ReportsPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the reports subtab "(.*?)" should appear$/) do |subtab|
    on ReportsPage do |page|
		if subtab == "BIRT Report Viewer"
			@browser.div(:class => /iceTreeRow/).link(:id => /reportTreePortlet_frmTree:reportTreePortlet_reportTree:0/).when_present.click
			
		elsif subtab == "SLA Reports"
                @browser.frame(:id => "myframe").div(:id => /content/).button(:value => /Website Report/).when_present.click
				sleep(5)
		else
		page.check_subtab(subtab)
				
		end
    end
end

Given(/^I select the autodiscovery "(.*?)" subtab$/) do |subtab|
    on AutodiscoveryPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the autodiscovery subtab "(.*?)" should appear$/) do |subtab|
    on AutodiscoveryPage do |page|
        page.check_subtab(subtab)
    end
end

Given(/^I am on the Configuration page$/) do
    visit ConfigurationPage
end

Given(/^I select the configuration "(.*?)" subtab$/) do |subtab|
    on ConfigurationPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the configuration subtab "(.*?)" should appear$/) do |subtab|
    on ConfigurationPage do |page|
        page.check_subtab(subtab)
    end
end

Given(/^I select the administration "(.*?)" subtab$/) do |subtab|
    on AdministrationViewPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the administration subtab "(.*?)" should appear$/) do |subtab|
    on AdministrationViewPage do |page|
        page.check_subtab(subtab)
    end
end

Given(/^I am on the Advanced page$/) do
    visit AdvancedPage
end

Given(/^I select the advanced "(.*?)" subtab$/) do |subtab|
    on AdvancedPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the advanced subtab "(.*?)" should appear$/) do |subtab|
    on AdvancedPage do |page|
        page.check_subtab(subtab)
    end
end

Given(/^I am on the Resources page$/) do
    visit ResourcesPage
end

Given(/^I select the resources "(.*?)" subtab$/) do |subtab|
    on ResourcesPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the resources subtab "(.*?)" should appear$/) do |subtab|
    on ResourcesPage do |page|
        page.check_subtab(subtab)
		
    end
end

Given(/^I am on the Business page$/) do
    visit BSMPage
end

Given(/^I select the Business "(.*?)" subtab$/) do |subtab|
    on BSMPage do |page|
        page.go_to_subtab(subtab)
    end
end

Then(/^the Business subtab "(.*?)" should appear$/) do |subtab|
    on BSMPage do |page|
        page.check_subtab(subtab)
	end
end
