# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(full_name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  name  = Faker::GameOfThrones.character
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(full_name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

Meal.create!(name:  "Example Meal",
             description: "example description",
             price:              3,
             weight: 1,
             user_id: Random.rand(100))

1000.times do |n|
  name  = Faker::Lorem.words(2)
  description = Faker::Lorem.paragraphs(rand(2..8))
  weight = Random.rand(100)
  price = Random.rand(100)
  user_id = Random.rand(1...100)
  Meal.create!(name:  name,
               description: description,
               price:              price,
               weight: weight,
               user_id: user_id)
end