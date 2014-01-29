@daily
Feature: Smoke Test Tabs
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version
@done
Scenario Outline: Check Dashboard tab
  Given I am on the Dashboard page
  And I select the dashboard "<subtab>" subtab
  Then the dashboard subtab "<subtab>" should appear
  Examples:
    | subtab          |
    | Summary         |
    | Trouble View    |
    | Monitoring      |
    | System View     |
    | Enterprise View |


Scenario: Check Event Console tab
  Given I am on the Event Console page
  Then The event console page should appear

Scenario: Check Status page
  Given I am on the Status Viewer page
  Then the status viewer page should appear

Scenario: Check Nagvis View page
  Given I am on the Nagvis View Page
  Then the nagvis view page should appear

Scenario Outline: Check Reports page
  Given I am on the Reports page
  And I select the reports "<subtab>" subtab
  Then the reports subtab "<subtab>" should appear
  Examples:
    | subtab           	 |
    | BIRT Report Viewer |
    | Performance View   |
    | Alerts             |
    | Notifications      |
    | Outages            |
    | SLA Reports	 |

Scenario Outline: Check Auto Discovery page
  Given I am on the Auto Discovery page
  And I select the autodiscovery "<subtab>" subtab
  Then the autodiscovery subtab "<subtab>" should appear
  Examples:
    | subtab     |
    | Discovery  |
    | Automation |

Scenario Outline: Check Configuration page
  Given I am on the Configuration page
  And I select the configuration "<subtab>" subtab
  Then the configuration subtab "<subtab>" should appear
  Examples:
    | subtab                |
    | Services              |
    | Profiles              |
    | Hosts                 |
    | Contacts              |
    | Escalations           |
    | Commands              |
    | Time Periods          |
    | Groups                |
    | Control               |
    | Tools                 |
    | Performance           |
    | Maintenance           |
    | NoMa                  |
    | Configuration Reports |
    | Downtimes             |
    | Recurring Downtimes   |
    
Scenario Outline: Check Business page
Given I am on the Business page
And I select the Business "<subtab>" subtab
Then the Business subtab "<subtab>" should appear
	
 Examples:
 |subtab|
 |Business Service Monitoring|
 |SLA Management|
 |SLA Reports|
 |SLA|
 |Calendar|
 |Holidays|
 |Operation Time|
 |Contracts|
 |Downtimes|


Scenario Outline: Check Administration page
  Given I am on the Administration page
  And I select the administration "<subtab>" subtab
  Then the administration subtab "<subtab>" should appear
  Examples:
    | subtab                |
    | Foundation            |
    | CustomGroups          |
    | GroundWork Cloud Hub  |
    | GroundWork License    |

Scenario Outline: Check Advanced page
  Given I am on the Advanced page
  And I select the advanced "<subtab>" subtab
  Then the advanced subtab "<subtab>" should appear
  Examples:
    | subtab            |
    | Network Graphing  |
    | Protocol Analyzer |
    | Network Map       |
    | Network Discovery |
    | Nagios            |

Scenario Outline: Check Resources page
  Given I am on the Resources page
  And I select the resources "<subtab>" subtab
  Then the resources subtab "<subtab>" should appear
  Examples:
    | subtab        |
    | Documentation |
    | Support       |
