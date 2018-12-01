Feature: Restaurant owner can update menu

    As a restaurant owner,
    In order to keep my customers up to date regarding my products
    I would like to be able to make updates to my menu

    Background: 
        Given the following dishes exist
        | name        | description | price | category |
        | Pizza       | Songoku     | 100   | Main     |
        And the following user exists
        | name | address      | phone   | email          | password | password_confirmation | restaurant_owner |
        | Greg | 123 drive st.| 7654321 | really@email.com | password | password              | true            |
        And I am logged in as 'Greg'

    Scenario: If restaruant owner fills in the update form correctly, he can update the menu
        Given the following category exists
        | name     |
        | Desserts |
        When I click 'Update Dish'
        And I fill in 'Name' field with 'Pasta'
        And I fill in 'Description' field with 'Carbonara'
        And I fill in 'Price' field with '125'
        And I choose "Desserts" from Category
        And I click 'Update Dish'
        Then I should see 'Pasta'
        And I should see 'Carbonara'
        And I should see '125 SEK'
        And I should see "Desserts"

    Scenario: If restaurant owner fills in the update form incorrectly, he gets an error message
        When I click 'Update Dish'
        And I fill in 'Name' field with ''
        And I fill in 'Description' field with ''
        And I fill in 'Price' field with ''
        And I click 'Update Dish'
        Then I should see "Name can't be blank"
        And I should see "Description can't be blank"
        And I should see "Price can't be blank"

    Scenario: Restaurant owner can delete a dish
        When I click 'Delete Dish'
        Then I should not see 'Pizza'
        And I should not see 'Songoku'
        And I should not see '100 SEK'