@upgrade
Feature: Upgrade View Test
	In order to know that the was done correctly
	As a tester
	I want to see certain basic functionality is working
    And the data that was present before the upgrade
    is still there.

Scenario: Display Build and version
Given Build and version
	
Scenario: Validate build number
  Given I am on the Dashboard page
  When I select show install info
  Then I should see the correct build number


Scenario: Apply System filter Applications on Event Console
  Given I am on the Event Console page
  When I apply the filter System under Applications 
  Then I should see no errors

Scenario: Apply Nagios filter Application on Event Console
  Given I am on the Event Console page
  When I apply the filter Nagios under Applications
  Then I should see there are events in this view

Scenario: Check no pending state on Status Viewer
  Given I am on the Status Viewer page
  When all Hosts and Service states are set up
  Then all states should not be on PENDING

Scenario: Apply Host Groups on Event Console
  Given I am on the Event Console page
  When I apply the filter "HG1" under "Host Group"
  Then I should see there are events in this view

Scenario: Apply Service Groups on Event Console
  Given I am on the Event Console page
  When I apply the filter "SG1" under "Service Group"
  Then I should see there are events in this view

Scenario: Apply Operation Status on Event Console
  Given I am on the Event Console page
  When I apply the filter "OPEN" under "Operation Status" 
  Then I should see there are events in this view 

Scenario: Check RDD graphs
  Given I am on the Status Viewer page
  When I select a Host
  Then I should see the RRD shown

Scenario: Check Cacti graphs
  Given I am on the Status Viewer page
  When I select localhost
  Then I should see that Cacti Graphs shown
