# Car.create(id: 1, name: "BMW", model: "X6", reserved: false, per_day_amount: 50, user_id: 1)
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
