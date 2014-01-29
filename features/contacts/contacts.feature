Feature: Contacts Test
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
  Given Build and version

Scenario: Create a new contact
  Given I am on the Contacts page
  And I create a new contact "contact1"
  Then the contact "contact1" should be created

Scenario: Create a new contact group
  Given I am on the Contacts page
  And I create a new contact group "contactgroup1"
  Then the contact group "contactgroup1" should be created

Scenario: Create a new hostgroup including a contact group
  Given I am on the Hosts page
  And I create a new Host group "HG22"
  And I add the hosts except localhost to the new host group
  And I add contact group to the hostgroup
  When I "add" the changes
  Then "HG22" changes were "saved" correctly

Scenario: Commit changes to Nagios
  Given I am on Control Configuration page
  When I commit new objects to Nagios
  Then the commit should be successful

Scenario: Delete Contact
  Given I am on the Contacts page
  And I delete Contact "contact1"
  Then the contact "contact1" should be deleted

Scenario: Delete Contact group
  Given I am on the Contacts page
  And I delete Contact group "contactgroup1"
  Then the contact group "contactgroup1" should be deleted
  
Scenario: Commit changes to Nagios
  Given I am on Control Configuration page
  When I commit new objects to Nagios
  Then the commit should be successful
