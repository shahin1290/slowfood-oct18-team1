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

Given('I am logged in as {string}') do |name|
    @user = User.find_by name: name
    login_as @user, scope: :user
    visit root_path
end

Given("I visit the page") do
    visit root_path
end

When("I click {string} on {string}") do |button, dish|
    product = Dish.find_by(name: dish)
    dom_section = "#dish_#{product.id}" 
    within(dom_section) do 
        click_on button
    end
end
When("I click {string}") do |link|
    click_on link
end

When("I choose {string} from Category") do |option|
    select option, from: 'dish[category_id]'
end

When("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end

Given("the user logs in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Then("I select {string} from {string}") do |option, selection|
    select option, from: selection
end

Given('show me the page') do
    save_and_open_page
end

Then('stop') do
    binding.pry
end

Then("I wait {int} second") do |int|
    sleep int
end

# And("I wait {int} second(s)") do |int|
#     sleep int
# end

# When /^I wait (\d+) seconds?$/ do |seconds|
#     sleep seconds.to_i
# end