Feature: Smoke Test
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working
	
	 
Scenario: Validate license key
  Given I am on Monitor Enterprise license page
  When I add the license key
  Then the license key should be validated
  

Scenario: Display Build and version
 Given Build and version	
  

Scenario Outline: Check Groundwork users login
  Given I am on the Dashboard page
  And I logout
  When I login with <Groundwork user> user
  Then I should see Welcome, <Groundwork user> message on dashboard
  Examples:
    | Groundwork user |
    | operator        |
    | user            |
    | admin           |

	
#OptimusComment: Merged discovery and removal of host scenarios into Auto Discovery

Scenario: Auto Discovery
  Given I am on the Auto Discovery page
  And I use the default discovery definition  
  And I add an address filter "Exclude" of type "exclude" with range "172.28.113.153"
  And I add an address filter "Include" of type "include" with range "172.28.113.152-153"
  And I change the mode to auto
  And I launch the Auto Discovery
  When I commit the results
  Then I should see "172.28.113.152"-"do-win7-1" but not the excluded host "172.28.113.153" in status viewer and host page
  And I remove the added hosts "Exclude" and "Include"

Scenario: Create Hosts group
  Given I am on the Host Configuration page
  And I create a new Host group "HG2"
  And I add the hosts except localhost to the new host group
  When I "add" the changes
  Then "HG2" changes were "saved" correctly

Scenario: Create Service group
  Given I am on the Service Configuration page
  And I create a new Service Group 
  And I add the services to the new Service Group
  Then service group should be created sucessfully

Scenario: Commit changes to Nagios
  Given I am on Control Configuration page
  When I commit new objects to Nagios
  Then the commit should be successful

Scenario: Create Custom group 
 Given I am on the Custom groups page
 When I create a new custom group "CG1" with type "Hostgroup" and children "HG1"
 And I save and publish
 Then I verify status "Published" for custom group "CG1" with type "Host Group" 

Scenario: Edit Custom group
  Given I am on the Custom groups page
  And I have a Custom group to "edit"
  When I edit custom group with name "CG1" and add "Linux Servers" as a child
  And I save and publish
  Then I verify that changes were done for custom group "CG1" with type "Host Group" and status "Published"   


Scenario: Delete Custom Groups
  Given I am on the Custom groups page
  And I have a Custom group to "delete"
  When I delete the custom group "CG1"
  Then I verify that custom group "CG1" with type "Host Group" was deleted
  
  
Scenario Outline: Verify BIRT Report Viewer
 Given I am on the Reports page
 And I select the reports "BIRT Report Viewer" subtab
 And I select the report "<report>"
 And I select the parameters for viewing the report "<report>"
 Then I should be able to view the "<report>" as selected
 
 Scenarios:
 |report|
 |host availability|
 |host state transitions|
 |hostgroup availability|
 |service state transitions|
 |event history|
 |event history overview|
 |epr host|
 |epr host multi variable|
 |epr hostgroup|
 |epr hostgroup multi variable|
 |epr hostgroup topfive|
 |host status|
 |hostgroup status|
 
 
Scenario Outline: Verification of cross-links
 Given I am on the "<page>" page
 When I select host "do-win7-1" on "<page>" page
 Then selected host "do-win7-1" should be redirected to the Status Viewer page
 And I remove host "do-win7-1" from "<page>" page
 
 Scenarios:
 |page|
 |Event Console|
 |Views|
 |BSM|

Scenario Outline: Create and Deleting a map
	Given I am on the Views page
	And I save a map with "<delete_name>"
	Then I delete the map with "<delete_name>"
	And I verify that the map with "<delete_name>" has been deleted
	Scenarios:
	|delete_name|
	|Deletetestmap1 |
	
Scenario Outline: Rename Map
	Given I am on the Views page
	And I select "<oldname>" and rename it with "<newname>"
	Then I should be able to see the "<newname>" map
	Scenarios:
	|oldname       |newname        |
	|World         |testmap        |
	|testmap       |World          |

