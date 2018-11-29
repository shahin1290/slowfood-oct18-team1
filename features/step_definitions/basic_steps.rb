Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I visit the page") do
    visit root_path
end

When("I click {string}") do |link|
    click_on link
end

Given("the following dishes exist") do |table|
    table.hashes.each do |dish|
        dish_category = Category.find_or_create_by(name: dish[:category])
        dish.except!('category')
        Dish.create(dish.merge(category: dish_category))
    end
end

When("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end

Given("I am logged in") do
    steps %{
        Given I fill in 'Email' field with 'real@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
    }
end

Then("I should see {string} in the {string} category") do |dish, category|
    dish_category = Category.find_by(name: category)
    dom_section = "#category_#{dish_category.id}"
    within(dom_section) do
        expect(page).to have_content dish
    end
end

Given('show me the page') do
    save_and_open_page
end