Feature: Configuration Test
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version
Scenario: Verify importing host and service profiles
  Given I am on the Profiles Configuration page
  And I open profile importer
  And I add a some services and profiles
  And I select overwrite existing objects and import
  Then I should see the services imported
  And I should see the service profiles
  And I should see the host profiles

Scenario: Verify creating a service profile
  Given I am on the Profiles Configuration page
  And I create a service profile
  And I specify a name and add the profile
  And I add a couple of services and save the profile
  Then The profile is created successfully
