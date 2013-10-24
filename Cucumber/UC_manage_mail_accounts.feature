Feature: manage mail accounts
  As an user
  I want to manage mail accounts
  So that I can administrate the mail accounts I use to send and receive E-Mails
  
  Scenario: create new mail account
    Given I am logged in 
	And I am on the "mail account list"
	And I clicked "add mail account"
    When I type in the correct mail account data
    And I click "add"
	Then I should see a confirmation message    

  Scenario: delete mail account
	Given I am logged in
    And I am on the "mail account list"
	And I clicked "delete mail account"    
    When I confirm the deletion
	Then I should see a confirmation message
