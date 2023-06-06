# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts 'Cleaning database..'
Artpiece.destroy_all

User.create(email: "test@lewagon.com", password: "password", password_confirmation: "password")
User.create(email: "ross@gmail.com", password: "password", password_confirmation: "password")

puts 'Adding artpieces..'
file1 = URI.open("https://www.kunstkopie.de/kunst/claude_monet/Seerosen-1.jpg")
file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/aa/Claude_Monet_-_Water_Lilies_-_1906%2C_Ryerson.jpg")
file3 = URI.open("https://uploads3.wikiart.org/images/claude-monet/water-lilies-1919-1.jpg!Large.jpg")
file4 = URI.open("https://i.otto.de/i/otto/0d117688-5138-51e3-92f0-8a6d28e0a910?h=520&w=551&sm=clamp")

@artpiece1 = Artpiece.new(title: "Water Lillies", description: "Huge painting, 300cm x 180cm", artist: "Claude Monet", day_price: 75, user: User.last)
@artpiece1.photos.attach(io: file1, filename: "Water-lillies.png", content_type: "image/png")
@artpiece1.photos.attach(io: file2, filename: "Water-lillies-2.png", content_type: "image/png")
@artpiece1.photos.attach(io: file3, filename: "Water-lillies-3.png", content_type: "image/png")
@artpiece1.photos.attach(io: file4, filename: "Water-lillies-4.png", content_type: "image/png")
@artpiece1.save

file5 = URI.open("https://blog.artsper.com/wp-content/uploads/2019/04/tableau-la-nuit-etoilee-vincent-van-gogh-75-x-55-c-1.jpg")
file6 = URI.open("https://cdn.kastatic.org/ka-perseus-images/b6e662b4efcd6c53bf80c73259d46c20c0bd2961.jpg")
file7 = URI.open("https://i.ytimg.com/vi/CABaUQml-gg/maxresdefault.jpg")
file8 = URI.open("https://cdn.shopify.com/s/files/1/0551/9248/5940/products/im0101vorschau1-1.jpg?v=1647296852")

@artpiece2 = Artpiece.new(title: "Starry Night", description: "Classic artpiece, 120cm x 70cm", artist: "Vincent van Gogh", day_price: 122, user: User.first)
@artpiece2.photos.attach(io: file5, filename: "Starry-night.png", content_type: "image/png")
@artpiece2.photos.attach(io: file6, filename: "Starry-night-2.png", content_type: "image/png")
@artpiece2.photos.attach(io: file7, filename: "Starry-night-3.png", content_type: "image/png")
@artpiece2.photos.attach(io: file8, filename: "Starry-night-4.png", content_type: "image/png")
@artpiece2.save

file9 = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/47/Vassily_Kandinsky%2C_1923_-_Composition_8%2C_huile_sur_toile%2C_140_cm_x_201_cm%2C_Mus%C3%A9e_Guggenheim%2C_New_York.jpg")
file10 = URI.open("https://www.portraitflip.com/wp-content/uploads/2023/03/composition-8-03.jpg")
file11 = URI.open("https://www.megagraficsrl.it/620-thickbox_default/bild-kandinsky-composition-viii-wassily-kandinsky-composition-8.jpg")
file12 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0f/4d/df/bb/kandinsky-composition.jpg")

@artpiece3 = Artpiece.new(title: "Composition 8", description: "Classic artpiece, 120cm x 70cm", artist: "Vincent van Gogh", day_price: 122, user: User.first)
@artpiece3.photos.attach(io: file9, filename: "Composition-8.png", content_type: "image/png")
@artpiece3.photos.attach(io: file10, filename: "Composition-8-2.png", content_type: "image/png")
@artpiece3.photos.attach(io: file11, filename: "Composition-8-3.png", content_type: "image/png")
@artpiece3.photos.attach(io: file12, filename: "Composition-8-4.png", content_type: "image/png")
@artpiece3.save

puts 'Finished..'
