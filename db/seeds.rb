# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

nandos = { name: "Nandos", address: "London", phone_number: 0265, category:"belgian" }

kfc = { name: "kfc", address: "London", phone_number: 0233, category:"french" }

burger_king = { name: "burger_king", address: "London", phone_number: 9271, category:"italian" }

dominos = { name: "dominos", address: "London", phone_number: 04533, category:"belgian" }

steers = { name: "steers", address: "London", phone_number: 023543, category:"chinese" }

mcd = { name: "mcd", address: "London", phone_number: 023333, category:"japanese" }

[nandos, kfc, burger_king, dominos, steers, mcd].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
