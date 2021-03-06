Feature: Adding new todos

  As a busy person
  I want to be able to note down what I need to do
  So that I don't forget

  # Test 1
  Scenario: Adding a single todo item
    Given Trudy has not entered any todo items
    When she adds "Walk the dog"
    Then her todo list should contain:
      | Walk the dog |

  # Test 2
  Scenario: Adding several todo items

  # Test 3
  Scenario: Adding todo items to an existing list
    Given Trudy has a todo list containing
      | Feed the cat |
    When she adds "Walk the dog"
    Then her todo list should contain:
      | Feed the cat |
      | Walk the dog |
    And the remaining item count should show "2 items left"

  # Test 4
  Scenario: User should be assisted when adding todo items for the first time
    Given Trudy has not entered any todo items
    Then the application should suggest how to add them

