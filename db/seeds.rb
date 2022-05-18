# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database.."
Restaurant.destroy_all  # seed twice - will have duplicates - therefor have to dele"old" seeds before beginning.

puts "Creating restaurants.."

51.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber,
    category: (0..5).to_a.sample
  )
  new_restaurant.save
  puts "restaurant #{new_restaurant.id} sucessfully created."
end

puts "done."
