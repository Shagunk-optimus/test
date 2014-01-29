Feature: Auto Discovery
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version

Scenario: Duplicate definition filter
  Given I am on the Auto Discovery page
  And I create a duplicate range-filter with name "test", type "include" and range "172.28.113.160-170"
  When I try to add the Range/Filter
  Then I should see the duplicate message error for "test"
 
Scenario: Default Auto Discovery definition with list of addresses
  Given I am on the Auto Discovery page
  And I use the default discovery definition
  And I add a list of hosts to this definition with name "List of Hosts", type "include" and range "172.28.111.203,172.28.113.16"
  And I change the mode to auto
  And I launch the Auto Discovery
  When I commit the results
  Then the hosts "172.28.111.203" and "172.28.113.16" for the filter "List of Hosts" should be visible in status viewer
  And I remove the hosts "172.28.111.203" - "qa-testsuite" and "172.28.113.16" - "bdc"
  
Scenario: Auto discover invalid range
  Given I am on the Auto Discovery page
  And I add an address filter "invalid" of type "include" with range "172.28.113."
  When I launch the Auto Discovery
  Then I should see a correct auto discover without invalid range "invalid"

Scenario: No method definition error
  Given I am on the Auto Discovery page
  And I create a new auto discovery definition "test" and select "test" filter of type "include" and range "172.28.113.160-170"
  When I Uncheck definition methods
  And save the definition
  And I launch go
  Then I should see no method assign message error for "test"
 
Scenario: Address filter of type exclude
  Given I am on the Auto Discovery page
  And I use the default discovery definition  
  And I add an address filter "Exclude" of type "exclude" with range "172.28.113.153"
  And I add an address filter "Include" of type "include" with range "172.28.113.152-153"
  And I change the mode to auto
  And I launch the Auto Discovery
  When I commit the results
  Then I should see "172.28.113.152"-"do-win7-1" but not the excluded host "172.28.113.153" in status viewer and host page
  And I remove the added hosts "Exclude" and "Include"

Scenario: Auto Discovery with auto-commit
  Given I am on the Auto Discovery page
  And I use the default discovery definition
  And I change the mode to auto commit
  And I add an address filter "auto-commit" of type "include" with range "172.28.113.161-162"
  When I start the discovery
  Then I should see the hosts "172.28.113.162" in Status viewer
  And I remove the filter "auto-commit" and the host "172.28.113.162"-"itmon-win"
  

Scenario: Interactive Auto Discovery
  Given I am on the Auto Discovery page
  And I use the default discovery definition
  And I add an address filter "interactive" of type "include" with range "172.28.113.189"
  And I change the mode to interactive
  And I launch the Auto Discovery with interactive mode
  When I select process records
  And I commit the results
  Then the Auto Discovery UI shows properly
  And I remove the filter "interactive" and the host "172.28.113.189"-"qa-ubuntu-12-04-64-2"

  
Scenario: Hosts discovery with overlapping ranges
  Given I am on the Auto Discovery page
  And I create a new auto discovery definition "testOverlap" and select "test" filter of type "include" and range "172.28.113.160-163,172.28.113.162-164"
  And I Uncheck SNMP definition method
  And save the definition
  When I launch the Auto Discovery
  Then the repeated hosts for the range "test" should be autodiscovered once
  
#New scenarios for AutoDiscovery

Scenario: Edit record for discovered host
  Given I am on the Auto Discovery page
  When I use the default discovery definition
  And I add an address filter "edit_host" of type "include" with range "172.28.113.189"
  And I change the mode to interactive
  And I launch the Auto Discovery with interactive mode
  And I edit the different parameters for host "qa-ubuntu-12-04-64-2"
  When I select process records and continue
  And I commit the results
  And the changes should be reflected on Status Viewer for host "172.172.172.172" and Host Configuration page
  And I remove the filter "edit_host" and the host "172.172.172.172"-"qa-ubuntu-12-04-64-2-renamed"


Scenario: Verify SNMP method
 Given I am on the Auto Discovery page
 And I edit default discovery defintion
 And I "uncheck" Nmap and "check" SNMP definition method
 And I add an address filter "test_range" of type "include" with range "172.28.113.165-170"
 And I change the mode to interactive
 And I launch Auto Discovery
 Then the discovery should show results of SNMP only
 And I remove filter "test_range"


Scenario: Verify Nmap method
 Given I am on the Auto Discovery page
 And I edit default discovery defintion
 And I "check" Nmap and "uncheck" SNMP definition method
#And I add an address filter "test_range_1" of type "include" with range "172.28.113.168-174"
 And I change the mode to interactive
 And I launch Auto Discovery
 Then the discovery should show results of Nmap only
 And I remove filter "test_range_1"
 And I edit default discovery defintion
 And I "check" Nmap and "check" SNMP definition method

Scenario: Verify renaming a discovery definition in create mode and delete in edit mode
 Given I am on the Auto Discovery page
 And I create a new auto discovery definition "test_1"
 And "rename" the definition "test_1"
 And save the definition
 Then the definition "test_1" should be "renamed"
 And "delete" the definition "test_1"
 Then the definition "test_1" should be "deleted"
 

Scenario: Verify deleting a discovery definition in create mode
 Given I am on the Auto Discovery page
 And I create a new auto discovery definition "test_2"
 And "delete" the definition "test_2"
 Then the definition "test_2" should be "deleted"


Scenario: Verify renaming a discovery definition in edit mode
 Given I am on the Auto Discovery page
 And I create a new auto discovery definition "test_3"
 And save the definition
 And I am on the Auto Discovery page
 And "edit" the definition "test_3"
 And "rename" the definition "test_3"
 And save the definition
 Then the definition "test_3" should be "renamed"
 And "delete" the definition "test_3"
 Then the definition "test_3" should be "deleted"
 

Scenario Outline: Verify different scan timeouts for Nmap method
 Given I am on the Auto Discovery page
 And I use the default discovery definition
 And I change the Nmap scan timeout mode to "<timeout>"
 And I change the mode to auto commit
 And I add an address filter "scan_timeout" of type "include" with range "172.28.113.174"
 When I start the discovery
 Then I should see the hosts "172.28.113.174" in Status viewer
 And I remove the filter "scan_timeout" and the host "172.28.113.174"-"do-centos-5-64-3"
 
 Scenarios:
 |timeout|
 |Sneaky|
 |Polite|
 |Normal|
 |Aggressive|
 |Insane|
 

Scenario Outline: Verify different scan types for Nmap method
 Given I am on the Auto Discovery page
 And I use the default discovery definition
 And I change the Nmap scan type mode to "<scan_type>"
 And I change the mode to auto commit
 And I add an address filter "scan_type" of type "include" with range "172.28.113.164"
 When I start the discovery
 Then I should see the hosts "172.28.113.164" in Status viewer
 And I remove the filter "scan_type" and the host "172.28.113.164"-"vm-it-xp-2"
 
 Scenarios:
 |scan_type|
 |TCP SYN SCAN|
 |TCP CONNECT SCAN|
 |UDP SCAN|
 

#Scenario: Enabling/Disabling Max hops and timeouts 
 #Given I am on the Auto Discovery page
 #And I edit the default discovery definition
 #And I "disable" the Traceroute Option
 #Then the max hops and timeout fields should be "disabled"
 #And I "enable" the Traceroute Option
 #Then the max hops and timeout fields should be "enabled"
 

Scenario Outline: Invalid validation for max hops and timeouts
 Given I am on the Auto Discovery page
 And I edit the default discovery definition
 And I input "<values>" in max hops and timeouts fields
 And save the definition
 Then there should be a validation message
 
 Scenarios:
 |values|
 |testing|
 |@#$%^&*|
 
 
#Scenarios for Autodiscovery --> Automation page 



Scenario Outline: Delete, Close and Cancel buttons on Automation page
 Given I am on the Automation page
 And I select the "<button>" button
 Then I should be redirected to the correct page for "<button>"
 
 Scenarios:
 |button|
 |close|
 |cancel_rename|
 |cancel|
 |delete|
 

Scenario Outline: Create a new automation schema
 Given I am on the Automation page
 And I create a new automation schema "<schema>"
 Then the schema "<schema>" should be successfully "created"
 
 Scenarios:
 |schema|
 |schema_type|
 |schema_template|
 |schema_type_template|
 

Scenario: Create new defintion from a new schema
 Given I am on the Automation page
 And I create a new automation schema "schema_template_1"
 Then the schema "schema_template_1" should be successfully "created"
 And I am on the Auto Discovery page
 And I create a new discovery defintion using "schema_template_1"
 And I check the Nmap TCP definition method
 And save the definition
 And I add an address filter "new_defintion" of type "include" with range "172.28.113.161-163"
 When I start the discovery
 Then the hosts "172.28.113.161" and "172.28.113.163" for the filter "new_defintion" should be visible in status viewer
 And I remove the hosts "172.28.113.161" - "qa-win-2k8-gdma" and "172.28.113.163" - "do-centos-5-64-1"
 And I remove filter "new_defintion"
 

Scenario: Verify empty data source file
 Given I am on the Automation page
 And I select the default schema
 And I view the data source file
 Then the data source file should not exist
 

Scenario: Verify data source file content upon disocvery
 Given I am on the Auto Discovery page
 When I use the default discovery definition
 And I add an address filter "view_data_source" of type "include" with range "172.28.113.189"
 And I change the mode to interactive
 And I launch the Auto Discovery with interactive mode
 And I am on the Automation page
 And I select the default schema
 And I view the data source file
 Then the entry for the host "172.28.113.189" "qa-ubuntu-12-04-64-2" should exist in the data source file
 And I remove filter "view_data_source"


Scenario: Create schema using automation schema template
 Given I am on the Automation page
 And I create a new automation template "template1"
 And I save it as a template
 And I create an automation schema "new_schema" using template "template1"
 Then the schema "new_schema" should be successfully "created"
  

Scenario Outline: Rename an automation schema
 Given I am on the Automation page
 And I "rename" the "<schema>"
 Then the schema "<schema>" should be successfully "renamed"
 
 Scenarios:
 |schema|
 |schema_type|
 |schema_template|
 |schema_type_template|


Scenario Outline: Delete an automation schema
 Given I am on the Automation page
 And I "delete" the "<schema>"
 Then the schema "<schema>" should be successfully "deleted"
 
 Scenarios:
 |schema|
 |schema_type|
 |schema_template|
 |schema_type_template|


Scenario Outline: Edit, Cancel and Disable Overrides redirection on Auto Configuration page
 Given I am on the Auto Discovery page
 And I add an address filter "button_redirection" of type "include" with range "172.28.113.189"
 And I change the mode to interactive
 And I launch the Auto Discovery with interactive mode
 And I select the "<button>" button
 Then I should be redirected to the correct page for "<button>"
 And I remove filter "button_redirection"
 
 Scenarios:
 |button|
 |edit|
 |close_scan|
 |disable_overrides|

Scenario: Enable Overrides on Auto Configuration page
  Given I am on the Auto Discovery page
  When I use the default discovery definition
  And I add an address filter "overrides" of type "include" with range "172.28.113.165"
  And I change the mode to interactive
  And I launch the Auto Discovery with interactive mode
  And I Enable Overrides and modify the different parameters for "bb-cent5-2"
  When I select process records
  And I commit the results
  Then changes should reflect on Status Viewer for host "172.28.113.165" "bb-cent5-2" and Host Configuration page
  And I remove the filter "overrides" and the host "172.28.113.165"-"bb-cent5-2"
