Feature: Creating people 
	In order to have people 
	As a user 
	I want to create them easily
	
	Scenario: Creating a person 
		Given I am on the homepage 
		When I follow "New Person" 
		And I fill in "First Name" with "Test" 
		And I fill in "Last Name" with "User"
		When I select "1977-08-23" as the "Birth Date" date 
		And I press "Create Person"
		Then I should see "Person has been created."