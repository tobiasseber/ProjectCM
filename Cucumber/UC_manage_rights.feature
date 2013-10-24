Feature: manage rights
  As an administrator
  I want to administrate different rights for the user
  So that I can set quotas and other regulations

  Scenario: set size of inbox for user
    Given I am logged in 
	And I am on the "user list"
	And I clicked "manage rights"
    When I type in the new inbox size
    And I click "save"
	Then I should see a confirmation message    

  Scenario: set maximum number of mail accounts
	Given I am logged in 
	And I am on the "user list"
	And I clicked "manage rights"
    When I type in the new maximum mail account number
    And I click "save"
	Then I should see a confirmation message  