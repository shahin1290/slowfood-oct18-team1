Feature: Visitor can see dishes sorted in categories
    As a visitor,
    In order to select products I want to buy
    I would like to be able to add products to an order

    @javascript
    Scenario: View list of dishes sorted in categories
        Given the following dishes exist
        | name     | description          | price | category |   

        When I visit the page
