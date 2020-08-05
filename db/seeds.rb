# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 4JE", category: "french", phone_number: "0658432948" }
pizza_east = { name: "Pizza_east", address: "8 Boundary St, London E2 5JE", category: "japanese", phone_number: "0653643948" }
pizza_north = { name: "Pizza_north", address: "9 Boundary St, London E2 8JE", category: "italian", phone_number: "0658864248" }
pizza_south = { name: "Pizza_south", address: "34 Boundary St, London E2 7JE", category: "chinese", phone_number: "0607536948" }
pizza_west = { name: "Pizza_west", address: "455 Boundary St, London E2 2JE", category: "belgian", phone_number: "0650563874" }

[ dishoom, pizza_east, pizza_north, pizza_south, pizza_west ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"