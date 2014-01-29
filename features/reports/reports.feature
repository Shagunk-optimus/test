Feature: Reports
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version

Scenario Outline: Verify BIRT Report Viewer
 Given I am on the Reports page
 And I select the reports "BIRT Report Viewer" subtab
 And I select the report "<report>"
 And I select the parameters for viewing the report "<report>"
 Then I should be able to view the "<report>" as selected
 
 Scenarios:
 |report|
 #|host availability|
 #|host state transitions|
 #|hostgroup availability|
 #|service state transitions|
 #|event history|
 #|event history overview|
|epr host|
|epr host multi variable|
|epr hostgroup|
|epr hostgroup multi variable|
|epr hostgroup topfive|
 #|host status|
 |hostgroup status|
