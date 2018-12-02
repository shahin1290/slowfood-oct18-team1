require 'faker'

6.times do
    Dish.create!(name:Faker::Food.dish, description:Faker::Food.description, price:Faker::Food.measurement, category_id: 4 )
    Dish.create!(name:Faker::Food.dish, description:Faker::Food.description, price:Faker::Food.measurement, category_id: 5 )
    Dish.create!(name:Faker::Food.dish, description:Faker::Food.description, price:Faker::Food.measurement, category_id: 6 )
end