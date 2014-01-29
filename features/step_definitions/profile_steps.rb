Given(/^I am on profile page$/) do
    visit ProfilesConfigurationPage
end

When(/^I select a profile to import$/) do
		on ProfilesConfigurationPage do |page|
		page.open_all_profiles
	end	
end

When(/^select host files to import$/) do
		on ProfilesConfigurationPage do |page|
		page.import_host_profile
	end	
end


Then(/^it should be added to Host Profiles$/) do
    visit ProfilesConfigurationPage do |page|
	page.visit_host_profile
	page.verify_host_profile 
	end
end

When(/^select service files to import$/) do
		on ProfilesConfigurationPage do |page|
		page.import_service_profile
	end	
end

Then(/^it should be added to Service Profiles$/) do
    visit ProfilesConfigurationPage do |page|
	page.visit_service_profile
	page.verify_service_profile 
	end
end

When(/^I create a new host profile "(.*?)" with description "(.*?)"$/) do |hp_name,hp_desc|
		on ProfilesConfigurationPage do |page|
		page.create_host_profile(hp_name,hp_desc)
	end	
end

When(/^select a host and save$/) do
		on ProfilesConfigurationPage do |page|
		page.assign_host
	end	
end

Then(/^host profile "(.*?)" should be added to that host on configuration page$/) do |host_profile|
    visit HostconfigurationPage do |page|
	page.visit_host_configuration
	page.verify_host_profile_addition(host_profile)
	end
end

When(/^I create a new service profile "(.*?)" with description "(.*?)"$/) do |sp_name,sp_desc|
		on ProfilesConfigurationPage do |page|
		page.create_servce_profile(sp_name,sp_desc)
	end	
end

When(/^select a service and save$/) do
		on ProfilesConfigurationPage do |page|
		page.assign_service
	end	
end

Then(/^service profile "(.*?)" should be added to that service on configuration page$/) do |service_profile|
    visit ServiceConfigurationPage do |page|
	page.visit_service_configuration
	page.verify_service_profile_addition(service_profile)
	end
end

When(/^I navigate to new host profile created$/) do
		on ProfilesConfigurationPage do |page|
		page.visit_host_profile 
	end	
end

When(/^select host profile$/) do
		on ProfilesConfigurationPage do |page|
		page.select_host_profile
	end	
end

When(/^I delete it$/) do
		on ProfilesConfigurationPage do |page|
		page.delete_host_profile
	end	
end

Then(/^host profile "(.*?)" should be deleted$/) do |host_profile|
    visit HostconfigurationPage do |page|
	page.visit_host_configuration
	page.verify_host_profile_deletion(host_profile)
	end
end


When(/^I navigate to new service profile created$/) do
		on ProfilesConfigurationPage do |page|
		page.visit_service_profile 
	end	
end

When(/^select service profile$/) do
		on ProfilesConfigurationPage do |page|
		page.select_service_profile
	end	
end

Then(/^service profile "(.*?)" should be deleted$/) do |service_profile|
    visit ServiceConfigurationPage do |page|
	page.visit_service_configuration
	page.verify_service_profile_deletion(service_profile)
	end
end