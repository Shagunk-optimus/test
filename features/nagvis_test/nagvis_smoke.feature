Feature: Navgis 
	In order to know that Nagvis is working
	As a tester
	I want to check the basic functionality 

Scenario: Display Build and version
Given Build and version

###################  ADD ICON & LINE #######################

Scenario Outline: Create map
	Given I am on the Views page
	And I save a map with "<delete_name>"
	Scenarios:
	|delete_name|
	|testgw |

Scenario Outline: Add an icon
	Given I am on the Views page
	And I select icon "<option>"
	And I verify the "<option>"
	And I delete and verify the "<option>"
	Scenarios:
	|option|
	|host|
	|service|
	#|hostgroup|
	#|servicegroup|
	|map|
	
@4299	
Scenario: Add a Line
	Given I am on the Views page
	And I select line "host"
	And I verify the line "host"
	And I delete and verify the line
	#Scenarios:
	#|option|
	#|host|
	#|service|
	#|hostgroup|
	#|servicegroup|
	#|map|


Scenario Outline: Modify map Options
	Given I am on the Views page
	And I modify map with backgrnd "<backgrnd>" aliasname "<aliasname>" color "<color>" mapiconset "<mapiconset>"
	And I verify modified map options "<aliasname>"
	Scenarios:
	|backgrnd     |aliasname  |color  |mapiconset|
	|OfficeLan.png |changedmap|#FF216B|earth|


Scenario Outline: Delete map
	Given I am on the Views page
	Then I delete the map with "<delete_name>"
	And I verify that the map with "<delete_name>" has been deleted
	Scenarios:
	|delete_name|
	|testgw |


###################  ADD SPECIAL #######################
#Scenario Outline: Add a special textbox
#	Given I am on the Views page
	#And I save a map with "<delete_name>" 
#	And I add a special textbox with "<delete_name1>"
#	And I verify the textbox
#	And I delete the textboxadded
#	And I verify deleted textboxadded
#	Scenarios:
#	|delete_name|delete_name1|
#	|testmap123 |textbox|
	
Scenario: Create a Stateless line
	Given I am on the Views page
	And I make and verify stateless line
	And I delete and verify stateless line
	
Scenario: Create a Container
	Given I am on the Views page
	And I make a container witout url with error
	And I make a container
	And I verify the weblink inside container
	And I delete the container
	And I verify deleted container
	
###################  ADD SPECIAL #######################

Scenario Outline: Rename Map
	Given I am on the Views page
	And I select "<oldname>" and rename it with "<newname>"
	Then I should be able to see the "<newname>" map
	Scenarios:
	|oldname       |newname        |
	|World         |testmap        |
	|testmap       |World          |


Scenario Outline: Saving a map with invalid name
	Given I am on the Views page
	And I save a map with "<invalid_name>"
	Then the created map with name "<invalid_name>" should not be saved
	Scenarios:
	|invalid_name|
	|ab@12 |

Scenario Outline: Create and Deleting a map
	Given I am on the Views page
	And I save a map with "<delete_name>"
	Then I delete the map with "<delete_name>"
	And I verify that the map with "<delete_name>" has been deleted
	Scenarios:
	|delete_name|
	|Deletetestmap |

Scenario Outline: Importing a map
	Given I am on the Views page
	And I import a map
	And I delete the imported map "<delete_name>"
	Scenarios:
	|delete_name|
	|test |
	
Scenario Outline: Manage background
	Given I am on the Views page
	And I create a views background name "<name>" color "<color>" width "<width>" height "<height>"
	And I create a map with backgroundimage
	And I upload a background image
	And I create a map with uploadimage
	And I delete created background "<delete_map>" and "<delete_upload>"
	Scenarios:
	|name     | color| width| height| delete_map | delete_upload |
	|testimage |FF216B|1024|768	|name		| uploadimage |
	
Scenario: Manage Shapes
	Given I am on the Views page
	And I upload a shape
	And I create a map with the shape
	And I delete the shape that cannot be deleted
	Given I am on the Views page
	And I delete the shape

Scenario Outline: Export map to static
	Given I am on the Views page
	And I export a map to static
	And I delete the static map "<delete_map>"
	Scenarios:
	|delete_map|
	|statictest|

Scenario: Error message exporting invalid static map
	Given I am on the Views page
	And error message appears appears saving invalid staticmap
	
Scenario Outline: User permission
	Given I am on the Views page
	And I give user permission to "<gwuser>"
	And I logout from current user
	When I login with <GWuser> gwuser
	Then I should be able to see the "<newname>" map
	#And I do not see other maps
	And I logout from current user
	And I login with admin
	Scenarios:
	|gwuser	|GWuser	|newname|
	|GWUser	|user	|PublicWeb|

Scenario Outline: Reset User permission	
	Given I reset the user permission of "<gwuser>"	
	Scenarios:
	|gwuser	|
	|GWUser	|
	
