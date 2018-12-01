Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
    expect(page).not_to have_content content
end

Then("I should see {string} in the {string} category") do |dish, category|
    dish_category = Category.find_by(name: category)
    dom_section = "#category_#{dish_category.id}"
    within(dom_section) do
        expect(page).to have_content dish
    end
end

Then("I click billing checkbox") do
    find('.checkbox-icon').click
end

