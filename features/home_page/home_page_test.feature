Feature: HomePage
    In order to know that the build is working
    As a tester
    I want to see certain basic functionality working

Scenario: Display Build and version
Given Build and version

Scenario: Support page
  Given I am on Resources page
  When I click on Support
  Then I should see the community support page

Scenario Outline: Edit profile information
  Given I am on My Preference page
  When I edit my profile with "<namefirst>", "<namelast>"
  And I submit it
  Scenarios:
  | namefirst | namelast  |           		  
  | test      | user  | 
  
Scenario Outline: Edit myprofile information
  Given I edit My GroundWork
  When I edit my username with "<namefirst>", "<namelast>"
  And I save it
  Scenarios:
  | namefirst | namelast  |     
  | GroundWork      | Administrator  | 
  
Scenario: Landing page link - Knowledge Base
Given I am on Login page
When I click on the Knowledge Base link
Then I should be redirected to the Knowledge Base Page


Scenario: Landing page link - Case Manager
Given I am on Login page
When I click on the Case Manager link
Then I should be redirected to the Case Manager Page


Scenario: Landing page link - Forums
Given I am on Login page
When I click on the Forums link
Then I should be redirected to the Forums Page

Scenario: Landing page link - Groundworks
Given I am on Login page
When I click on the Groundwork link
Then I should be redirected to the Groundwork home Page
