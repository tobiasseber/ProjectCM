Feature: manage rights
  As an administrator
  I want to administrate different rights for the user
  So that I can set quotas and other regulations

  Scenario: set size of inbox for user group
    Given user exists
    When I click “manage rights” 
    Then I can type in a number for the size of the inbox which I permit the user 
    And I should confirm this step

  Scenario: set size of mail accounts
    Given user exists
    When I click “manage rights”
    Then I can type in a number for the size of the amount of mail accounts a user can add
    And I should confirm this step
