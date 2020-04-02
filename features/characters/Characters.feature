@characters
Feature: I should be able to perform all CRUD commands for Marvel characters

  @all_characters
  Scenario: I should be able to get all Marvel characters
    Given I send a valid GET request to get all characters
    Then all characters should return in the response

  @specific_character
  Scenario: I should be able to get a specific Marvel character
    Given I send a valid request for a specific character
    Then a specific character should return in the response

  @create_character
  Scenario: I should be able to create a new Marvel character
    Given I send a valid request to create character
    Then a new character should be created

  @update_character
  Scenario: I should be able to update new Marvel character
    Given I send a valid request to update character
    Then the character should be updated

  @delete_character
  Scenario: I should be able to delete a new Marvel character
    Given I send a valid request to delete character
    Then the character should be deleted