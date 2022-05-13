

Cucumber TestSuite is located here : \\src\test\java\todos\CucumberTestSuite.java


Feature file is located here : \\src\test\resources\features 

## Test 1


  Scenario: Adding a single todo item
    Given Trudy has not entered any todo items
    When she adds "Walk the dog"
    Then her todo list should contain:
      | Walk the dog |
    And the remaining item count should show "1 item left"

## Test 2
    Given Trudy has not entered any todo items
    When she adds "Walk the dog"
    And she adds "Feed the cat"
    Then her todo list should contain:
      | Walk the dog |
      | Feed the cat |

## test 3

     Given Trudy has not entered any todo items
     When she adds "Walk the dog"
     And she adds "Feed the cat"
     Then her todo list should contain:
       | Walk the dog |
       | Feed the cat |


## test 4


  Scenario: User should be assisted when adding todo items for the first time
    Given Trudy has not entered any todo items
    Then the application should suggest how to add them



## test 5 


  Scenario: The application credits should appear in the footer
    When Todd opens the Todo Application
    Then he should see the credits in the footer

