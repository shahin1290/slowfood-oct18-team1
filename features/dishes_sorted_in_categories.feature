Feature: Visitor can see dishes sorted in categories
    As a visitor,
    In order to navigate the products
    I would like to see the products sorted in categories

    Scenario: View list of dishes sorted in categories
        Given the following dishes exist
        | name     | description          | price | category |   
        | olives   | green little ones    | 20    | starter  |
        | pizza    | italian favorite     | 100   | main     |
        | pasta    | tom's recipe         | 120   | main     |
        | cake     | homemade             | 30    | dessert  |

        When I visit the page
        Then I should see "starter" 
        And I should see "olives" 
        Then I should see "main" 
        And I should see "pizza" 
        And I should see "pasta"
        Then I should see "dessert" 
        And I should see "cake" 
