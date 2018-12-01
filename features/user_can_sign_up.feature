Feature: User can sign up
    As a user
    in order to have be able to finalise an order
    I would like to be able to register an account

    Background: 
        Given the following user exists
        | name | address      | phone   | email          | password | password_confirmation |
        | Greg | 123 drive st.| 7654321 | real@email.com | password | password              |
        And I visit the page
        And I click 'Registration'

    Scenario: When I fill in the sign up form correctly, I can sign up
        When I fill in 'Name' field with 'Jane Doe'
        And I fill in 'Address' field with '123 street dr.'
        And I fill in 'Phone' field with '1234567'
        And I fill in 'Email' field with 'jane@random.com'
        And I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'password'
        And I click 'Sign up'
        Then I should see 'Hello, Jane Doe'
    
    Scenario: When I don't fill in the sign up form I get error messages
        When I click 'Sign up'
        Then I should see "Email can't be blank"
        And I should see "Password can't be blank"
        And I should see "Name can't be blank"
        And I should see "Address can't be blank"
        And I should see "Phone can't be blank"

    Scenario: When Password and Password confirmation doesn't match I get error message
        When I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'pasword'
        And I click 'Sign up'
        Then I should see "Password confirmation doesn't match Password"

    Scenario: When Email is taken I get error message
        When I fill in 'Email' field with 'real@email.com'
        And I click 'Sign up'
        Then I should see "Email has already been taken"