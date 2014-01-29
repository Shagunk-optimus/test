Feature: Configuration Test
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working for "Profiles" modules

Scenario: Display Build and version
Given Build and version

Scenario: Verify importing host profiles
Given I am on profile page
When I select a profile to import 
And select host files to import
Then it should be added to Host Profiles

Scenario: Verify importing service profiles
Given I am on profile page
When I select a profile to import 
And select service files to import
Then it should be added to Service Profiles

Scenario: Assign host profile to host
Given I am on profile page
When I create a new host profile "test_hp" with description "test_desc"
And select a host and save
Then host profile "test_hp" should be added to that host on configuration page


Scenario: Assign service profile to host
Given I am on profile page
When I create a new service profile "test_sp" with description "test_desc"
And select a service and save
Then service profile "test_sp" should be added to that service on configuration page

Scenario: Delete host profile
Given I am on profile page
When I navigate to new host profile created 
And select host profile
And I delete it
Then host profile "test_hp" should be deleted

Scenario: Delete service profile
Given I am on profile page
When I navigate to new service profile created 
And select service profile
And I delete it
Then service profile "test_sp" should be deleted