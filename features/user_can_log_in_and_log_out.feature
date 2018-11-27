Feature: User can log in and out
    As a user
    in order to access my account
    I would like to be able to log in

    Background: 
        Given the following user exists
        | name | address      | phone   | email          | password | password_confirmation |
        | Greg | 123 drive st.| 7654321 | real@email.com | password | password              |
        And I visit the site
        And I click 'Login'

    Scenario: When I fill in the login form correctly I can log in
        Given I fill in 'Email' field with 'real@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
        Then I should see 'Hello, Greg' 