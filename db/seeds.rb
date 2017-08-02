require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  resto = Restaurant.create!({
    name: Faker::Company.name,
    address: Faker::Address.city,
    phone_number: "0607080900",
    category: "chinese",
  })

  Review.create(
    content: Faker::ChuckNorris.fact,
    rating: 4,
    restaurant: resto
  )
end

puts 'Finished!'
