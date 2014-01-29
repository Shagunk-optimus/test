Feature: Stress Testing
	In order to know that the build is working
	As a tester
	I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version
	
Scenario: Autodiscover whole subnet
  Given I am on the Auto Discovery page
  And I specify subnet filter pattern "stress_testing" of type "include" and range "172.28.113.*"
  Then I launch an Auto Discovery for stress testing
  Then hosts should be discovered correctly
  And hosts of "172.28.113.*" for the filter "stress_testing" should appear on status viewer
