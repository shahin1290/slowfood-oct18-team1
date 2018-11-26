Feature: Visitor can see a menu
    As a visitor,
    In order to get an overview of the restaurant products
    I would like to be able to see a menu

Scenario: View list of dishes on the index page
    Given the following dishes exist
      | name     | description          | price |             
      | Pizza    | Italian favorite     | 100   |

    When I visit the index page
    Then I should see "Pizza"
    And I should see "Italian favorite"
    And I should see "100"

# Scenario: Display the menu
#     Given I visit the index page
#     Then I should see "Pizza"

# Category
# Dish_image (use active storage)
# Name
# Description
# Price