Feature: Restaurant owner can add dish
    As a restaurant owner,
    In order to keep my customers up to date regarding my products
    I would like to be able to make updates to my menu

    Background: 
        Given the following user exists
        | name | address      | phone   | email            | password | password_confirmation | restaurant_owner |
        | Greg | 123 drive st.| 7654321 | really@email.com | password | password              | true             |
        And the following category exists
        | name | 
        | Main |
        And I am logged in as 'Greg'

    Scenario: If Restaurant owner fills in add dish form correctly
        When I click 'Add Dish'
        And I fill in 'Name' field with 'Pizza'
        And I fill in 'Description' field with 'Yummy'
        And I fill in 'Price' field with '99'
        And I choose 'Main' from Category
        And I click 'Save Dish'
        Then I should see 'Pizza'
        And I should see 'Yummy'
        And I should see '99 SEK'

    Scenario: If Restaurant owner fills in add dish form incorrectly, he gets an error message
        When I click 'Add Dish'
        And I click 'Save Dish'
        Then I should see "Name can't be blank"
        And I should see "Description can't be blank"
        And I should see "Price can't be blank"