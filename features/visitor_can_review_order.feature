Feature: Visitor can review his order
    As a visitor, 
    In order to see my full order and a total price
    I would like be able to see a list on an order details page

    @javascript
    Scenario: Visitor can view his order on a checkout page
        Given the following dishes exist
        | name     | description          | price | category |   
        | olives   | green little ones    | 20    | starter  |
        | pizza    | italian favorite     | 100   | main     |
        | cake     | homemade             | 30    | dessert  | 

        When I visit the page
        And I click "Add to cart" on "olives"
        And I click "Add to cart" on "pizza"
        And I click "Add to cart" on "pizza"
        And I click "Add to cart" on "cake"
        And I click "Checkout"
        And I should see "Order Total: €250" 
        


