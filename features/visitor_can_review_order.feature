Feature: Visitor can review his order
    As a visitor, 
    In order to see my full order and a total price
    I would like be able to see a list on an order details page

    Scenario: Visitor can view his order on a checkout page
        # Given the following order exists
        # | quantity | name     | description          | price | category |   
        # |   1      | olives   | green little ones    | 20    | starter  |
        # |   2      | pizza    | italian favorite     | 100   | main     |
        # |   1      | cake     | homemade             | 30    | dessert  | 

        When I visit the page 
        And I click "Checkout"
        Then I should see "1" "olives"
        And I should see "2" "pizza"
        And I should see "1" "cake"
        And I should see a "Order Total:" with "250" 
        


