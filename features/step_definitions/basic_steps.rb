Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end
  
Given("I visit the site") do
    visit root_path
end
  
When("I click {string}") do |link|
    click_on link
end
  
When("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end