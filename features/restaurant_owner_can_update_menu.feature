Feature: Restaurant owner can update menu
    As a restaurant owner,
    In order to keep my customers up to date regarding my products
    I would like to be able to make updates to my menu

    Background: 
        Given the following user exists
        | name | address      | phone   | email          | password | password_confirmation |
        | Greg | 123 drive st.| 7654321 | real@email.com | password | password              | 
        And I visit the page
        And I click 'Log in'
        And I am logged in

    Scenario: If Restaurant owner fills in add dish form correctly
        When I click 'Add Dish'
        And I fill in 'Name' field with 'pizza'
        And I fill in 'Description' field with 'yummy'
        And I fill in 'Price' field with '99'
        And I click 'Save Dish'
        Then I should see 'pizza'
        And I should see 'yummy'
        And I should see '99'