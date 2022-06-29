# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(name: 'Hammas', email: 'hammas@gmail.com', password: 'hammas')
# User.create(name: 'Kandy', email: 'kandy@gmail.com', password: 'kandy')
# one= User.create(name: 'Farouq', email: 'farouq@gmail.com', password: 'farouq')

# car= Car.create({
#   user_id:1656259565589,
#   name:Faker::Company.name,
#   model: Faker::Games::Witcher.character,
#   per_day_amount:Faker::Commerce.price,
#   reserved: false,
# })

# car2 = Car.create({
#   user_id: one.id,
#   name:Faker::Company.name,
#   model: Faker::Games::Witcher.character,
#   per_day_amount:Faker::Commerce.price,
#   reserved: false
# })
# car3 = Car.create({
#   user_id: one.id,
#   name:Faker::Company.name,
#   model: Faker::Games::Witcher.character,
#   per_day_amount:Faker::Commerce.price,
#   reserved: true
# })

5.times do
  car= Car.create({
    user_id:1656259565589,
    name:Faker::Company.name,
    model: Faker::Games::Witcher.character,
    per_day_amount:Faker::Commerce.price,
    reserved: false,
  })

     Reservation.create({
        user_id:1656259565589,
        car_id: car.id,
        city: Faker::Address.city,
        date: Faker::Date.in_date_period
    })

    
end
