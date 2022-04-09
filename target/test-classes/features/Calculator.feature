@F_1234
Feature: This feature would be creating a calculator for add and subtract

  Scenario: To Add
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario: To Subtract
    Given I have a calculator
    When I sub 6 and 3
    Then I should get the result as 3

  Scenario Outline: To add two numbers using scenario outline
    Given I have a calculator
    When I  add <num1> and <num2>
    Then I should get the result as <Result>

    Examples: 
      | num1 | num2 | Result |
      |   10 |   10 |     20 |
      |   50 |   20 |     70 |

  Scenario Outline: To sub two numbers using scenario outline
    Given I have a calculator
    When I  sub <num1> and <num2>
    Then I should get the result as <Result>

    Examples: 
      | num1 | num2 | Result |
      |   10 |   10 |      0 |
      |  100 |   30 |     70 |

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 8 |
      | 7 |
    Then I should get the result as 24

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below numbers using List
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: To calculate the total bill of the order
    Given I have a calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then I should get the result as 100

  Scenario: To calculate the total bill of the order using quanitity
    Given I have a calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get the result as 140
