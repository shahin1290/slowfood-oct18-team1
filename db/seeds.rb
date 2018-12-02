require 'faker'

User.create!(name:'Greg', email:'real@email.com',phone:'66634',address:'Awesome str 99', password:'password', restaurant_owner: true)
User.create!(name:'Joe', email:'really@email.com',phone:'66634',address:'Awesome str 99', password:'password', restaurant_owner: false)

Category.create!(name:'Starters', id:1)
Category.create!(name:'Mains', id:2)
Category.create!(name:'Desserts', id:3)

9.times do
    Dish.create!(name:Faker::Food.dish, description:Faker::Food.description, price:Faker::Food.measurement, category_id: 1 )
    Dish.create!(name:Faker::Food.dish, description:Faker::Food.description, price:Faker::Food.measurement, category_id: 2 )
    Dish.create!(name:Faker::Food.dish, description:Faker::Food.description, price:Faker::Food.measurement, category_id: 3 )
end