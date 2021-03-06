Feature: BankAccount
  In order to create a new bank account
  As new customer
  I want ...


  Scenario Outline: Open Account
    Given I don't have any account
    And I have a firstname "<firstname>"
    And I have a lastname "<lastname>"
    And the initial balance is <balance>
    When I open a new account with accountNumber "<accountNumber>", accountId <accountId> and openingDate "<openingDate>"
    Then I get his accountNumber "<accountNumber>"
    Examples:
      | firstname | lastname | accountNumber          | balance | accountId | openingDate |
      | Mary      | Jackson  | GB41OMQP68570038161775 | 200     | 3456      | 2022-02-23T10:15:30  |
      | Thimoty   | Laurence | GB41OMQP68570038161889 | 0       | 735353    | 2022-05-02T10:15:30  |

#    Scenario: First name can't be empty
#      Given I don't have any account
#      And I have a firstname " "
#      And I have a lastname "James"
#      And the initial balance is 200
#      When I open a new account with accountNumber "GB41OMQP68570038161775", accountId 563 and openingDate "2022-02-05"
#      Then I get an Error on First Name, First name is empty
