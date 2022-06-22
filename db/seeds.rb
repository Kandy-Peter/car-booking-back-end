one= User.create({
  name:Faker::Name.name,
  email:"farouq@me",
  password: 123456
})

car= Car.create({
  user_id: one.id,
  name:Faker::Company.name,
  model: Faker::Games::Witcher.character,
  per_day_amount:Faker::Commerce.price,
  reserved: false,
})

car2 = Car.create({
  user_id: one.id,
  name:Faker::Company.name,
  model: Faker::Games::Witcher.character,
  per_day_amount:Faker::Commerce.price,
  reserved: false
})
car3 = Car.create({
  user_id: one.id,
  name:Faker::Company.name,
  model: Faker::Games::Witcher.character,
  per_day_amount:Faker::Commerce.price,
  reserved: true
})

5.times do
     Reservation.create({
        user_id: one.id,
        car_id: car.id,
        city: Faker::Address.city,
        date: Faker::Date.in_date_period
    })
end
