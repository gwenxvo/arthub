# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database..'
Artpiece.destroy_all

User.create(email: "test@lewagon.com", password: "password", password_confirmation: "password")
User.create(email: "ross@gmail.com", password: "password", password_confirmation: "password")

puts 'Adding movies..'
Artpiece.create(title: "Water Lillies", description: "Huge painting, 300cm x 180cm", artist: "Claude Monet", day_price: 75, user: User.last)
Artpiece.create(title: "Starry Night", description: "Classic artpiece, 120cm x 70cm", artist: "Vincent van Gogh", day_price: 122, user: User.first)

puts 'Finished..'
