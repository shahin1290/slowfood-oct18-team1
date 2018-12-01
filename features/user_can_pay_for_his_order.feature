Feature: User can pay for his order
    As a user,
    In order to complete my purchase
    I need to be able to fill in a stripe payment form

    @javascript
    Scenario: User can pay for his order
        Given the following dishes exist
        | name     | description          | price | category |   
        | olives   | green little ones    | 20    | starter  |
        | pizza    | italian favorite     | 100   | main     |
        | cake     | homemade             | 30    | dessert  | 
        And I visit the page
        # When I am logged in as 'Shahin Patowary'
        And I click "Add to cart" on "olives"
        And I click "Add to cart" on "pizza"
        And I click "Add to cart" on "pizza"
        And I click "Add to cart" on "cake"
        And I click "Checkout"
        And I should see "Order Total: €250"
        And I click "Checkout"
        
        And I should see "Quick Register"
        
        And I fill in Enter Email for quick register with 's.patowary@yahoo.com'
        When I fill in 'First Name' field with 'shahinkona01'
        And I should see "Invalid Email or password."
        And I fill in 'Last name' field with 'Patowary'
        And I fill in 'Address' field with 'skattegarden'
        And I fill in 'city' field with 'linkoping'
        And I fill in 'Zip' field with '58648'
        And I fill in 'Country' field with 'sweden'
        And I fill in 'Phone' field with '0761256612'
        And I click "Use Billing Adress"
        And I click "Save and Continue"
        # Then I should see "Payment was successful"