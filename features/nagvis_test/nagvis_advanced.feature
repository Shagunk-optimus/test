Feature: Navgis Advanced
	In order to know that Nagvis is working
	As a tester
	I want to check the basic functionality 
		
Scenario: Display Build and version
Given Build and version

Scenario: Preparation - Check hosts 
  Given I am on the Status Viewer page
  When I open hosts all filter
  Then I should see all the hosts
  When I open group all filter
  Then I should see all the services

Scenario Outline: Overview Page
  Given I am on the Nagvis View Page
  When I hover the "<Map>"
  Then the "<Map>" summary state should be "<State>"
  And  the "<Map>" summary output should match
  And  the "<Map>" map child information should match
  Examples:
    |  Map               |	State		|
    |  Host groups       |	DOWN		|	
    |  Service groups    |	CRITICAL	|	
    |  Sub maps          |	DOWN		|
 

Scenario Outline: Hosts group map
  Given I am on the Nagvis View Page
  And I click on "Host groups" map
  When I hover "<Group name>" icon on "hostgroup" map
  Then the Host "<Group name>" state should be "<State>"
  And  the Host "<Group name>" output should match
  And  the Host "<Group name>" child information should match
  Examples:
     |  Group name      |   State      |
     |  hosts all       |   DOWN	   |
     |  hosts critical  |   DOWN	   |
     |  hosts ok        |   DOWN	   |
     |  hosts pending   |   PENDING    |
     |  hosts unknown   |   DOWN	   |
     |  hosts warning   |   DOWN	   |
     |  hosts up        |   CRITICAL   |
     |  hosts down      |   DOWN	   |


Scenario Outline: Service group map
  Given I am on the Nagvis View Page
  And I click on "Service groups" map
  When I hover "<Group name>" icon on "servicegroup" map
  Then the Service "<Group name>" state should be "<State>"
  And  the Service "<Group name>" output should match
  And  the Service "<Group name>" child information should match
  Examples:
     |  Group name          |   State      |
     |  group-all           |   CRITICAL   |
     |  group-ok            |   OK         |
     |  group-warning       |   WARNING    |
     |  group-critical      |   CRITICAL   |
     |  group-unknown       |   UNKNOWN    |
     |  group-pending       |   PENDING    |


Scenario Outline: Submaps
  Given I am on the Nagvis View Page
  And I click on "Sub maps" map
  When I hover "<Map name>" icon on "map" map
  Then the Map "<Map name>" state should be "<State>"
  And  the Map "<Map name>" output should match
  And  the Map "<Map name>" child information should match
  Examples:
     |  Map name            |   State      |
     |  Hosts_Up            |   CRITICAL   |
     |  Hosts_Down          |   CRITICAL   |
     |  hostgroups          |   DOWN       |
     |  servicegroups       |   CRITICAL   |

Scenario Outline: Hosts Up
  Given I am on the Nagvis View Page
  And I click on "Sub maps" map
  And I select the map "Hosts_Up"
  When I hover "<Host name>" icon on "host" map
  Then the Host Up "<Host name>" state should be "<State>"
  And  the Host Up "<Host name>" output should match
  And  the Host Up "<Host name>" "perfdata" should match
  And  the Host Up "<Host name>" "current attempt" should match
  And  the Host Up "<Host name>" "last check" should match
  And  the Host Up "<Host name>" "next check" should match
  And  the Host Up "<Host name>" "last state change" should match
  And  the Host Up "<Host name>" "summary state" should match
  And  the Host Up "<Host name>" "summary output" should match
  And  the Host Up "<Host name>" child information should match
  Examples:
     |  Host name           |   State      |
     |  host-up-ok          |   UP         |
     |  host-up-warning     |   UP         |
     |  host-up-critical    |   UP         |
     |  host-up-unknown     |   UP         |
     |  host-up-pending     |   PENDING    |
	 
	 
#OptimusComment: Added scenario from 'feature' file present in 'Bug' folder

Scenario: Create Gadgets to the Map
  Given I am on the Administration Views page
  And I create a Map "TestMap"
  And I open TestMap  
  When I add a gadget raw number icon for service
  And I add a gadget chart pie icon for service
  And I add a gadget bar icon for service
  And I add a gadget thermo icon for service
  And I select the Map on the top Views page
  Then I should be able to see the map with the 4 gadgets
  And I should also be able to delete the map "TestMap"
