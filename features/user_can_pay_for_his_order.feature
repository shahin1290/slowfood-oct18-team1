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
        Given I am logged in as 'Greg'
        When I visit the page
        And I click "Add to cart" on "olives"
        And I click "Add to cart" on "pizza"
        And I click "Checkout"
        And I should see "Order Total: €120" 
        And I click "Checkout"
        
        And show me the page
        Then I should see "Payment was successful"