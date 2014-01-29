Feature: Dashboard Test
    In order to know that the build is working
    As a tester
    I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version

Scenario: Dashboard tab exists for new user
	Given I am on the New Staff page under Group
	And I create a new user account with username "optimus" and password "optimus123" and firstname "optimus" and lastname "information" and email "optimus@info.com"
	And I login with "optimus" and "optimus123"
	Then I should see the dashboard page

Scenario: Default dashboard can be edited by root user
  Given I login with "root" and "root"
  And I navigate to Site Editor to edit the current dashboard page
  When I add a portlet
  Then I should see the portlet I added

Scenario: Deleting a portlet by root user
  Given I login with "root" and "root"
  And I navigate to Site Editor to edit the current dashboard page
  When I delete a portlet
  Then I should not see the portlet 

Scenario: Remove user created
  Given I go to User Management under Groups
  And I select Search users
  When I delete the user with name "optimus"
  Then the user should be deleted
