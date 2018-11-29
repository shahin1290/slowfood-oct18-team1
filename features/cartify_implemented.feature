Feature: Visitor can add dishes to an order
    As a visitor,
    In order to select dishes I want to buy
    I would like to be able to add dishes to an order

    @javascript
    Scenario: Visitor can add dishes to an order
        Given the following dishes exist
        | name     | description          | price | category |   
        | olives   | green little ones    | 20    | starter  |
        | pizza    | italian favorite     | 100   | main     |
        | cake     | homemade             | 30    | dessert  | 

        When I visit the page
        And I click "Add to cart" on "olives"
        Then I should see '1 item' 
        And I click "Add to cart" on "pizza"
        Then I should see '2 items' 
        And I click "Add to cart" on "cake"
        Then I should see '3 items' 
        


