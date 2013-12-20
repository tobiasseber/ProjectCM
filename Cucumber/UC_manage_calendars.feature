Feature: manage calendars
  As an user
  I want to manage calendars
  So that I can create and manage my calendars

  Scenario: create calendar
    Given I am logged in 
	And I am on the calendar list
	And I clicked create calendar
    When I type in the correct calendar data
    And I click create
	Then I should see a confirmation message    

  Scenario: delete calendar
	Given I am logged in
    And I am on the calendar list
	And I clicked delete calendar
    When I confirm the deletion
	Then I should see a confirmation message