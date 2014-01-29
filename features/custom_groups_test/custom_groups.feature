Feature: Custom Groups
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

	
Scenario: Display Build and version
Given Build and version


Scenario: Create Custom group 
 Given I am on the Custom groups page
 When I create a new custom group "CG1" with type "Hostgroup" and children "HG1"
 And I save and publish
 Then I verify status "Published" for custom group "CG1" with type "Host Group"  


Scenario: Editing Custom group and removing all its children
  Given I am on the Custom groups page
  When I select the existing custom group created and remove all its children    
  And I save and publish the custom group 
  Then an error message for selecting children should appear
  

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


Scenario: Edit more than one custom group
  Given I am on the Custom groups page
  And I create two Custom groups "CG1" of type "HostGroup" with child "HG1" and "CG2" of type "ServiceGroup" with child "SG1"
  When I try to edit two Custom groups at the same time
  Then an error "Cannot edit multiple custom groups" should appear


Scenario: Delete more than one custom group
  Given I am on the Custom groups page
  When I delete two Custom groups "CG1" and "CG2" at the same time
  Then a warning "Please confirm your delete action" should appear


Scenario: Create duplicate Custom group
  Given I am on the Custom groups page
  And I create a custom group "CG1" with type "Hostgroup" and children "HG1"
  And I save and publish
  When I try to create an identical custom group with name "CG1" type "Hostgroup" and child "HG1"
  Then an error message should appear
 

Scenario: Custom group with mixing children
  Given I am on the Custom groups page
  And I create a service custom group "CG2" of type "ServiceGroup" and child "SG1"
  And I save and publish
  When I create a custom group "Master" of type "CustomGroup" with the ones created before "CG1" and "CG2"
  Then I should see the mixing children error


Scenario: Custom group save but not published
  Given I am on the Custom groups page
  When I delete the custom group "CG1"
  When I delete the custom group "CG2"
  And I create a custom group "CG1" with type "Hostgroup" and children "HG1"
  When I save
  Then it should not appear on Status viewer
  

Scenario: Custom group order on Event Console
  Given I am on the Event Console page
  When I apply the filter Host Group 
  Then the groups should be in order
  
 
#OptimusComment:Moved bug folder 
Scenario: Custom group view
  Given I am on the Custom groups page
  And I delete custom groups created
  And I create a custom group "CG1" with type "Hostgroup" and children "HG1"
  And I save and publish
  When I am on the Event Console page
  And I select the custom group on Event Console of type "Host Group"
  Then the custom group should not be highlighted
  
  
#OptimusComment:Moved bug folder 
Scenario: Custom group view 
  Given I am on the Status Viewer page
  And I select the custom group created
  Then I should not open a hostgroup view and delete custom group created "CG1"


Scenario: Delete Hosts group
  Given I am on the Host Configuration page
  And I delete HG1 Host group
 

Scenario: Delete Service group
   Given I am on the Service Configuration page
   And I delete SG1 Service group 
 
