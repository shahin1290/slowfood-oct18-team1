Feature: Restaruant owner can log in

    As a restaurant owner,
    In order to be able to keep the information about my restaurant up to date
    I would like to be able to log in to the system as a restaurant owner

    Background: 
        Given the following user exists
        | name | address      | phone   | email          | password | password_confirmation | restaurantowner |
        | Greg | 123 drive st.| 7654321 | real@email.com | password | password              | true            |
        And I visit the page
        And I click 'Log in'

    Scenario: If restaurant owner fills in the login form correctly he can log in
        When I fill in 'Email' field with 'real@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
        Then I should see 'Hello, Greg, you are the boss!'