Given /^I am on the Contacts page$/ do
	visit ContactsPage
end

Given /^I create a new contact "(.+)"$/ do |contact|
	on ContactsPage do |page|
		page.create_contact(contact,contact,contact+'@portal.com')
	end
end

Then /^the contact "(.+)" should be created$/ do |contact|
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?("Contact \"#{contact}\" added.")
end

Given /^I create a new contact group "(.+)"$/ do |contactgroup|
	on ContactsPage do |page|
		page.create_contact_group(contactgroup,contactgroup)
	end
end

Then /^the contact group "(.+)" should be created$/ do |contactgroup|
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?("Contactgroup \"#{contactgroup}\" has been saved.")
end	

Given /^I am on the Hosts page$/ do
		visit HostconfigurationPage
end

Given /^I add contact group to the hostgroup$/ do
	@browser.frame(:id => /myframe/).frame(:name => /monarch_main/).select(:id => /contactgroup.nonmembers/).option(:value => /contactgroup/).when_present.select
	
	@browser.frame(:id => /myframe/).frame(:name => /monarch_main/).button(:name => /contactgroup_add_member/, :value => /<< Add/).when_present.click
end

Given /^I delete Contact "(.+)"$/ do |contact|
	on ContactsPage do |page|
		page.delete_contact(contact)
	end
end

Then /^the contact "(.+)" should be deleted$/ do |contact|
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?("Removed:")
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?(contact)
end

Given /^I delete Contact group "(.+)"$/ do |contactgroup|
	on ContactsPage do |page|
		page.delete_contact_group(contactgroup)
	end
end

Then /^the contact group "(.+)" should be deleted$/ do |contactgroup|
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?("Removed:")
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?(contactgroup)
end

		