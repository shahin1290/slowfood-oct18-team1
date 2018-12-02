@javascript
Feature: User can pay for his order
    As a user,
    In order to complete my purchase
    I need to be able to fill in a stripe payment form

     Background: 
        Given the following user exists
        | email          | password |
        | real@email.com | password |
        And the user logs in as "real@email.com"

        And the following dishes exist
        | name     | description          | price | category |   
        | olives   | green little ones    | 20    | starter  |
        | pizza    | italian favorite     | 100   | main     |
        | cake     | homemade             | 30    | dessert  | 
        And I visit the page

    Scenario: User can pay for his order
        When I click "Add to cart" on "olives"
        And I click "Add to cart" on "pizza"
        And I click "Add to cart" on "pizza"
        And I click "Add to cart" on "cake"
        And I click "Checkout"
        Then I should see "Order Total: €250"
        When I click "Checkout"
        Then I should see "Shipping Address"
            # Then stop
            # Then I wait 1 second
        When I click billing checkbox 
        And I fill in 'First Name' field with 'Shahin'
        And I fill in 'Last name' field with 'Patowary'
        And I fill in 'Address' field with 'skattegarden'
        And I fill in 'City' field with 'linkoping'
        And I fill in 'Zip' field with '58648'
        And I select "Sweden" from 'country'
        And I fill in 'Phone' field with '0761256612'
        # And I click "Use Billing Adress"
        And I click "Save and Continue"
        Then I should see "Shipping Method"
            Then stop

