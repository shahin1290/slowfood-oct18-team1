Feature: Visitor can see a menu
    As a visitor,
    In order to get an overview of the restaurant products
    I would like to be able to see a menu

Scenario: Display the menu
    Given I visit the index page
    And I click "Main"
    Then I should see "Pizza"