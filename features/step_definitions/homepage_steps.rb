Given /^I am on Resources page$/ do
    visit ResourcesPage
end

When /^I click on Support$/ do
    visit SupportPage
end

Then /^I should see the community support page$/ do
    on ResourcesPage do |page|
        page.support_text_element.exists?
    end
end

Given /^I am on My Preference page$/ do
    on PreferencePage do |page|
		page.preference
	end
end

When /^I edit my profile with "(.*?)", "(.*?)"$/ do |namefirst, namelast|
    on PreferencePage do |page|
        #page.edit_profile_element.when_present.click
        page.firstname = namefirst
        page.lastname = namelast
		end
end

When /^I submit it$/ do
    on PreferencePage do |page|
        page.submit
		sleep(5)
		page.ok
		sleep(5)
		page.close
		sleep(5)
    end
end


Given /^I edit My GroundWork$/ do
    on PreferencePage do |page|
		page.restuser
		
	end
end
When /^I edit my username with "(.*?)", "(.*?)"$/ do |namefirst, namelast|
    on PreferencePage do |page|
        #page.edit_profile_element.when_present.click
        page.firstname = namefirst
        page.lastname = namelast
		end
end

When /^I save it$/ do
    on PreferencePage do |page|
        page.submit
		sleep(5)
		page.ok
		sleep(5)
		page.close
		sleep(5)
	end
	visit DashboardPage
	on DashboardPage do |page|
		sleep(3)
		page.logout
	end
end

Given /^I am on Login page$/ do
	visit LoginPage
	@browser.div(:text => /2013 GroundWork Inc.  All rights reserved/).exists?.should == true
end

When /^I click on the Knowledge Base link$/ do
    on LoginPage do |page|
		page.knowledge_base
		sleep(3)
	end
end

When /^I click on the Case Manager link$/ do
    on LoginPage do |page|
		page.case_manager
		sleep(3)
	end
end

When /^I click on the Forums link$/ do
    on LoginPage do |page|
		page.forums
		sleep(3)
	end
end

When /^I click on the Groundwork link$/ do
    on LoginPage do |page|
		page.groundwork
		sleep(3)
	end
end


Then /^I should be redirected to the Knowledge Base Page$/ do
#sleep(2)
	@browser.window(:title => /Home - Support - GWConnect/).when_present.use
sleep(2)
	@browser.div(:text => /Welcome to the public area of the GroundWork Knowledge Base/).exists?.should == true
	@browser.window(:title =>/GroundWork Enterprise Edition 7.0.1/).when_present.use
end

Then /^I should be redirected to the Case Manager Page$/ do
	#sleep(2)
	@browser.window(:title => /System Dashboard - GroundWork Case Manager/).when_present.use
	#sleep(5)
	@browser.link(:text => /Dashboards/).when_present.when_present.click
	#sleep(2)
	#@browser.frame(:class => "gadget-iframe").div(:text => /Welcome to the GroundWork Case Manager (GWCM)/).exists?.should == true
	@browser.window(:title =>/GroundWork Enterprise Edition 7.0.1/).when_present.use
end

Then /^I should be redirected to the Forums Page$/ do
	#sleep(2)
	@browser.window(:title => /GroundWork Forums/).when_present.use
	#sleep(2)
	@browser.link(:text => /Members/).when_present.click
	#sleep(2)
	@browser.link(:text => /Forums/).when_present.click
	#sleep(2)
	@browser.window(:title =>/GroundWork Forums/).when_present.use
	#sleep(2)
end

Then /^I should be redirected to the Groundwork home Page$/ do
	#sleep(2)
	@browser.link(:text => /Features/).when_present.click
	@browser.link(:text => /Pricing/).when_present.click
end
