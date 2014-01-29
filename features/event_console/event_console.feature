@event_console
Feature: Event Console
    In order to know that the build is working
    As a tester
    I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version


Scenario: Change settings on service template page
  Given I am on Services Configuration page
  And I modify max check attempts and disable active checks in generic services
  And I am on Control Configuration page
  When I commit new objects to Nagios
  Then the commit should be successful


Scenario: Change settings on host template page
  Given I am on Host Configuration page
  And I modify max check attempts and disable active checks in generic hosts
  And I am on Control Configuration page
  When I commit new objects to Nagios
  Then the commit should be successful
  
  
Scenario: Apply SYSLOG filter Applications on Event Console
Given I am on the Event Console page
When I apply the filter SYSLOG under Applications 
Then I should see there are events in this view


Scenario: Apply System filter Applications on Event Console
Given I am on the Event Console page
When I apply the filter SNMPTRAP under Applications 
Then I should see there are events in this view

Scenario: Apply Last 10 min NAGIOS Critical filter on Event Console
Given I am on the Event Console page
When I apply the filter last 10 min NAGIOS Critical 
Then I should see there are events in this view

Scenario: Apply Last 5 SNMPTRAP Warning on Event Console
Given I am on the Event Console page
When I apply the filter last 5 SNMPTRAP Warning 
Then I should see there are events in this view

Scenario: Apply Nagios Warning on Event Console
Given I am on the Event Console page
When I apply the filter nagios Warning 
Then I should see there are events in this view

Scenario: Apply Warning on Event Console
Given I am on the Event Console page
When I apply the filter Warning 
Then I should see there are events in this view

Scenario: Apply Critical on Event Console
Given I am on the Event Console page
When I apply the filter Critical 
Then I should see there are events in this view

Scenario: Open log message on Event Console
Given I am on the Event Console page
And I apply the filter Nagios under Applications 
When I select 1 event
And I perform the action open log message
And I navigate to operation status open filter
Then the events selected must be display

Scenario: Close log message on Event Console
Given I am on the Event Console page
And I apply the filter Nagios under Applications
When I select 1 event
And I perform the action close log message
And I navigate to operation status close filter
Then the events selected must be display

Scenario: Verify search by messages on Event Console
Given I am on the Event Console page
And I select all open events
And I search for the events with the message "SSH OK"
When I click the Search button
Then I should only see events with the message "SSH OK"

Scenario: Verify search in new tab on Event Console
Given I am on the Event Console page
And I click on the new tab button
And The window for new tab gets display
And I search for the events with the message "HTTP OK" on the new tab
When I click the Search button on the new tab
Then I should only see events with the message "HTTP OK" on the new tab


Scenario Outline: Generate a service alert
  Given I am on the Status Viewer page
  And I select a host and a service
  And I select submit passive Check Result with "<event status>"
  When I submit and navigate to Event Console
  Then Event gets display with the status as "<event status>"
  Scenarios:
    | event status |
    | CRITICAL     |
    | WARNING      |
    | UNKNOWN      |
    | OK           |
