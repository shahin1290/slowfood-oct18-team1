Feature: Restaurant owner can update menu

    As a restaurant owner,
    In order to keep my customers up to date regarding my products
    I would like to be able to make updates to my menu

    Background: 
        Given the following dishes exist
        | name  | description | price |
        | pizza | songoku     | 100   |
        And I am logged in

    Scenario: If restaruant owner fills in the update form correctly, he can update the menu
        When I click 'Update Dish'
        And I fill in 'Name' field with 'Pasta'
        And I fill in 'Description' field with 'Carbonara'
        And I fill in 'Price' field with '125'
        And I click 'Update Dish'
        Then I should see 'Name: Pasta'
        And I should see 'Description: Carbonara'
        And I should see 'Price: 125 SEK'
