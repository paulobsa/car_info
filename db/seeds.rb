# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
70.times do
  manufacturer = Manufacturer.new
  manufacturer.name = Faker::Vehicle.manufacture
  manufacturer.foundation = Faker::Date.between_except(50.year.ago, 1.year.from_now, Date.today)
  manufacturer.country = Faker::Address.country
  manufacturer.city = Faker::Address.city
  manufacturer.save
end
