Feature: User can log in and out
    As a user
    in order to access my account
    I would like to be able to log in

    Background: 
        Given the following user exists
        | name | address      | phone   | email          | password | password_confirmation |
        | Greg | 123 drive st.| 7654321 | real@email.com | password | password              |
        And I visit the page
        And I click 'Login'

    Scenario: If user fills in the login form correctly he can log in
        When I fill in 'Email' field with 'real@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
        Then I should see 'Hello, Greg'

    Scenario: If user fills in the login form incorrectly he will see an error message
        When I click 'Log in'
        Then I should see 'Invalid Email or password.'
    
    Scenario: User can log out when logged in
        Given I am logged in as 'Greg'
        When I click 'Log out'
        Then I should not see 'Hello, Greg'
    