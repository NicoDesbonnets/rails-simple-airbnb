# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.delete_all

10.times do
  name = Faker::Name.name + ' flat'
  address = Faker::Address.street_address
  description = Faker::Company.catch_phrase
  price_per_night = rand(1...10)
  number_of_guests = rand(1...10)
  flat = Flat.new(name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests)
  flat.save
end
