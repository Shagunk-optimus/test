Feature: AD/LDAP Test
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version

@1
Scenario Outline: Check Users login

Given I log in with "<user>"
Then I should see the dashboard page for "<user>"

Scenarios:
	|user|
	|admin|
	|user|
	|operator|
@2	
Scenario Outline: Verify unauthorized user login

Given I log in with unauthorized "<unauthuser>"
Then I should see an error message

Scenarios:
	|unauthuser|
	|testuser3|
	
Scenario Outline: Check login with users having multiple roles

Given I log in with a new user "<user>"
Then I should see the dashboard page for the new user "<user>"

Scenarios:
	|user|
	|testuser2|
	|testuser3|