Feature: manage mail accounts
  As an user
  I want to manage mail accounts
  So that I can administrate the mail accounts I use to send and receive E-Mails

  Scenario: create new mail account
    Given the mail account to be created does not exist
    When I click “add mail account”
    Then I should see an overlay where I can type in my name, the mail address and the password
    And I have to repeat the password
    And the mail account to be created is entered in the database

  Scenario: delete mail account
    Given the mail account to be deleted does exist
    When I click “delete mail account”
    Then I should see a confirmation dialogue to confirm deleting the mail account or cancel the deletion
    And the mail account to be deleted is removed from the database

