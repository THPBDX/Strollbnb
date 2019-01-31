require 'faker'

Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all

10.times do
  city = City.create!(city_name: Faker::Address.city)
  dog1 = Dog.create!(name: Faker::Dog.name,breed: Faker::Dog.breed,city:city)
  dog2 = Dog.create!(name: Faker::Dog.name,breed: Faker::Dog.breed,city:city)
  dogsitter1 = Dogsitter.create!(name: Faker::Name.name, age:Faker::Number.between(15, 30),city:city)
  dogsitter2 = Dogsitter.create!(name: Faker::Name.name, age:Faker::Number.between(15, 30),city:city)
  stroll1 = Stroll.create!(date: Faker::Date.forward(23),city:city,dog:dog1,dogsitter:dogsitter2)
  stroll2 = Stroll.create!(date: Faker::Date.forward(23),city:city,dog:dog2,dogsitter:dogsitter1)
end