Given("I visit the index page") do
    visit root_path
end

Then("I should see {string}") do |value|
    expect(page).to have_content value
end

Given("the following dishes exist") do |table|
    table.hashes.each do |dish|
        dish_category = Category.create(name: dish[:category])
        dish.except!('category')
        Dish.create(dish.merge(category: dish_category))
    end
end

Then("show me the page") do
    save_and_open_page
end