Given(/^I am on the Profiles Configuration page$/) do
    visit ProfilesConfigurationPage
end

Given(/^I open profile importer$/) do
    on ProfilesConfigurationPage do |page|
        page.open_all_profiles
    end
end

Given(/^I add a some services and profiles$/) do
    on ProfilesConfigurationPage do |page|
        page.add_object("service-dhcp_alive")
        page.add_object("service-dns_alive")
        page.add_object("service-profile-ssh-ftp")
        page.add_object("service-profile-service-ldap")
        page.add_object("host-profile-service-ping")
    end
end

Given(/^I select overwrite existing objects and import$/) do
    on ProfilesConfigurationPage do |page|
        page.overwrite_and_import
    end
end

Then(/^I should see the services imported$/) do
    visit ServiceConfigurationPage
    on ServiceConfigurationPage do |page|
        page.open_services
        page.check_service("dhcp_alive")
        page.check_service("dns_alive")
    end
end

Then(/^I should see the service profiles$/) do
    visit ProfilesConfigurationPage
    on ProfilesConfigurationPage do |page|
        page.open_profiles("Service profiles")
        page.check_profile("ssh-ftp")
        page.check_profile("service-ldap")
    end
end

Then(/^I should see the host profiles$/) do
    on ProfilesConfigurationPage do |page|
        page.open_profiles("Host profiles")
        page.check_profile("service-ping")
    end
end

Given(/^I create a service profile$/) do
    on ProfilesConfigurationPage do |page|
        page.create_service_profile
    end
end

Given(/^I specify a name and add the profile$/) do
    on ProfilesConfigurationPage do |page|
        page.set_profile_name("SP1")
        page.add_profile
    end
end

Given(/^I add a couple of services and save the profile$/) do
    on ProfilesConfigurationPage do |page|
        page.add_service("dhcp_alive")
        page.add_service("dns_alive")
        page.save_profile
    end
end

Then(/^The profile is created successfully$/) do
    on ProfilesConfigurationPage do |page|
        @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /Modify/).when_present.click
        page.check_profile("SP1")
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_main")
        frame.button(:value => "Delete").when_present.click
        frame.button(:value => "Yes").when_present.click
    end
end
