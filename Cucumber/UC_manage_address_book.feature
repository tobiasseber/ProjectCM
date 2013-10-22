Feature: manage address book
  As an user
  I want to manage my address book
  So that I can write E-Mails to my contacts or other people

  Scenario: create contact
    When I click “create contact”
    Then I should see an overlay where I can type in the name, an address with the street, house number, zip-code, town, telephone number and E-Mail address
    And I can upload a profile picture for the contact
    And the contact to be created should be entered in the database
    And I should confirm this step

  Scenario: delete contact
    Given the contact to be deleted must exist
    When I click “delete contact”
    Then I should see a confirmation dialogue to confirm deleting the contact or cancel the deletion
    And the contact to be deleted is removed from the database

