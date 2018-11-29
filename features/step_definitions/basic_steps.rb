Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("the following category exists") do |table|
    table.hashes.each do |category|
        FactoryBot.create(:category, category)
    end
end

Given("the following dishes exist") do |table|
    table.hashes.each do |dish|
        dish_category = Category.find_or_create_by(name: dish[:category])
        dish.except!('category')
        Dish.create(dish.merge(category: dish_category))
    end
end

Given("I am logged in") do
    steps %{
        Given the following user exists
        | name | address      | phone   | email          | password | password_confirmation | restaurant_owner |
        | Greg | 123 drive st.| 7654321 | really@email.com | password | password              | true            |
        And I visit the page
        And I click 'Log in'
        Given I fill in 'Email' field with 'really@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
    }
end

Given("I visit the page") do
    visit root_path
end

When("I click {string}") do |link|
    click_on link
end

When("I choose {string} from {string}") do |option, select_box|
    select_box = 'dish[category_id]'
    select option, from: select_box
end

When("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end

Given('show me the page') do
    save_and_open_page
end