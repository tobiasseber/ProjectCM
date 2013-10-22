Feature: manage calendars
  As an user
  I want to manage calendars
  So that I can create and manage my calendars

  Scenario: create calendar
    Given the calendar to be create does not exist
    When I click “create calendar”
    Then I should see an overlay where I can type in a name, a short description and a color for the calendar
    And the calendar is entered in the database
    And I should confirm this step

  Scenario: delete calendar
    Given the calendar to be deleted does exist
    When I click on “delete calendar”
    Then I should see a confirmation dialogue to confirm deleting the calendar or cancel the deletion
    And the calendar to be deleted is removed from the database
