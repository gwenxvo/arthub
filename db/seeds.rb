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

file25 = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/7b/Selbstportr%C3%A4t_Van_Gogh_Museum_04.jpg")
file26 = URI.open("https://mksconbrio.com/wp-content/uploads/2022/08/IMG_2335-scaled.jpeg")
file27 = URI.open("https://assets.deutschlandfunk.de/FILE_e1e558daf446dfa87b5d5d958db751d1/original.jpg")
file28 = URI.open("https://backend.dontdiewondering.com/wp-content/uploads/2022/02/IMG_0227-683x1024.jpg")

@artpiece7 = Artpiece.new(address: "Berliner Strasse 20, München", title: "Self portrait", description: "One of the many self portraits by the artist, 70cm x 150cm", artist: "Vincent van Gogh", day_price: 1499, user: User.first)
@artpiece7.photos.attach(io: file25, filename: "Self portrait.png", content_type: "image/png")
@artpiece7.photos.attach(io: file26, filename: "Self portrait-2.png", content_type: "image/png")
@artpiece7.photos.attach(io: file27, filename: "Self portrait-3.png", content_type: "image/png")
@artpiece7.photos.attach(io: file28, filename: "Self portrait-4.png", content_type: "image/png")

file1 = URI.open("https://www.kunstkopie.de/kunst/claude_monet/Seerosen-1.jpg")
file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/aa/Claude_Monet_-_Water_Lilies_-_1906%2C_Ryerson.jpg")
file3 = URI.open("https://uploads3.wikiart.org/images/claude-monet/water-lilies-1919-1.jpg!Large.jpg")
file4 = URI.open("https://i.otto.de/i/otto/0d117688-5138-51e3-92f0-8a6d28e0a910?h=520&w=551&sm=clamp")

@artpiece1 = Artpiece.new(address: "Dropping Lane, Bruton", title: "Water Lillies", description: "Water Lilies is a series of approximately 250 oil paintings, 300cm x 180cm", artist: "Claude Monet", day_price: 545, user: User.last)
@artpiece1.photos.attach(io: file1, filename: "Water-lillies.png", content_type: "image/png")
@artpiece1.photos.attach(io: file2, filename: "Water-lillies-2.png", content_type: "image/png")
@artpiece1.photos.attach(io: file3, filename: "Water-lillies-3.png", content_type: "image/png")
@artpiece1.photos.attach(io: file4, filename: "Water-lillies-4.png", content_type: "image/png")
@artpiece1.save

file13 = URI.open("https://www.weltkunst.de/wp-content/uploads/2023/03/Picasso_Werk_Buste_d_77435688-1282x1627.jpg")
file14 = URI.open("https://assets.deutschlandfunk.de/9f40c6b1-32df-4061-90c6-9dd0e72c8f6e/1920x1080.jpg?t=1685940464832")
file15 = URI.open("https://images.bild.de/647e29bd96ee545e65f6710b/382bc658f6499e37541e81b8e3c84412,14a13800?w=992")
file16 = URI.open("https://m.faz.net/media0/ppmedia/aktuell/2874066507/1.8774502/mmobject-still_full/taxiert-auf-bis-zu-2-5.jpg")

@artpiece4 = Artpiece.new(address: "160 Sir Lowry Road, Woogstock, Cape Town", title: "Buste de femme", description: "Painting that shows the second wife of the artist. Was just sold for 3.4M EUR, 320cm x 200cm", artist: "Pablo Picasso", day_price: 2300, user: User.first)
@artpiece4.photos.attach(io: file13, filename: "Buste-de-femme.png", content_type: "image/png")
@artpiece4.photos.attach(io: file14, filename: "Buste-de-femme-2.png", content_type: "image/png")
@artpiece4.photos.attach(io: file15, filename: "Buste-de-femme-3.png", content_type: "image/png")
@artpiece4.photos.attach(io: file16, filename: "Buste-de-femme-4.png", content_type: "image/png")
@artpiece4.save

file5 = URI.open("https://blog.artsper.com/wp-content/uploads/2019/04/tableau-la-nuit-etoilee-vincent-van-gogh-75-x-55-c-1.jpg")
file6 = URI.open("https://cdn.kastatic.org/ka-perseus-images/b6e662b4efcd6c53bf80c73259d46c20c0bd2961.jpg")
file7 = URI.open("https://i.ytimg.com/vi/CABaUQml-gg/maxresdefault.jpg")
file8 = URI.open("https://cdn.shopify.com/s/files/1/0551/9248/5940/products/im0101vorschau1-1.jpg?v=1647296852")

@artpiece2 = Artpiece.new(address: "Ounardwer Strasse 16-20, Berlin", title: "Starry Night", description: "Post impressionism/early expressionism with oil paints on canvas, 73,7cm × 92,1cm", artist: "Vincent van Gogh", day_price: 620, user: User.first)
@artpiece2.photos.attach(io: file5, filename: "Starry-night.png", content_type: "image/png")
@artpiece2.photos.attach(io: file6, filename: "Starry-night-2.png", content_type: "image/png")
@artpiece2.photos.attach(io: file7, filename: "Starry-night-3.png", content_type: "image/png")
@artpiece2.photos.attach(io: file8, filename: "Starry-night-4.png", content_type: "image/png")
@artpiece2.save

file9 = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/47/Vassily_Kandinsky%2C_1923_-_Composition_8%2C_huile_sur_toile%2C_140_cm_x_201_cm%2C_Mus%C3%A9e_Guggenheim%2C_New_York.jpg")
file10 = URI.open("https://www.portraitflip.com/wp-content/uploads/2023/03/composition-8-03.jpg")
file11 = URI.open("https://www.megagraficsrl.it/620-thickbox_default/bild-kandinsky-composition-viii-wassily-kandinsky-composition-8.jpg")
file12 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0f/4d/df/bb/kandinsky-composition.jpg")

@artpiece3 = Artpiece.new(address: "470 Broome Street, New York City", title: "Composition 8", description: "Classic artpiece from 1923 when the artist was a teacher at the Weimar Bauhaus, 120cm x 70cm", artist: "Wassily Kandinsky", day_price: 430, user: User.first)
@artpiece3.photos.attach(io: file9, filename: "Composition-8.png", content_type: "image/png")
@artpiece3.photos.attach(io: file10, filename: "Composition-8-2.png", content_type: "image/png")
@artpiece3.photos.attach(io: file11, filename: "Composition-8-3.png", content_type: "image/png")
@artpiece3.photos.attach(io: file12, filename: "Composition-8-4.png", content_type: "image/png")
@artpiece3.save

file17 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686084378/IMG_2491_api6uq.jpg")
file18 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686084383/IMG_2494_rwkus5.jpg")
file19 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686084377/IMG_2492_nlssln.jpg")
file20 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686084385/IMG_2493_ucslaz.jpg")

@artpiece5 = Artpiece.new(address: "53-55 Hollywood Road, Central, Hong Kong", title: "Humankind vs. Nature", description: "Action painting depicting the diminishing nature being threatened by humankind, 150cm x 70cm", artist: "MV", day_price: 390, user: User.last)
@artpiece5.photos.attach(io: file17, filename: "Humandkind-vs-nature.png", content_type: "image/png")
@artpiece5.photos.attach(io: file18, filename: "Humandkind-vs-nature-2.png", content_type: "image/png")
@artpiece5.photos.attach(io: file19, filename: "Humandkind-vs-nature-3.png", content_type: "image/png")
@artpiece5.photos.attach(io: file20, filename: "Humandkind-vs-nature-4.png", content_type: "image/png")
@artpiece5.save

file29 = URI.open("https://www.kunstkopie.de/kunst/wassily_kandinsky/studie-fuer-murnau-mit-kirche-kandinsky.jpg")
file30 = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/230303103749-01-kandinsky-murnau-auction.jpg")
file31 = URI.open("https://cdn.unitycms.io/images/49meeM1jKJK80fFBpCO3sF.jpg")
file32 = URI.open("https://sothebys-md.brightspotcdn.com/dims4/default/ef30919/2147483647/strip/true/crop/1834x2750+0+0/resize/385x577!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fmedia-desk%2Fe6%2F73%2F06b184014eaba25a1d9e8c1f3153%2Flot15-kandinskyscaleshot.jpg")

@artpiece7 = Artpiece.new(address: "Bennelong Point, Sydney NSW 2000", title: "Murnau with Church", description: "The painting from 1910 has an eventful history: it once decorated the dining room of Johanna Margarethe and Siegbert Stern.", artist: "Wassily Kandinsky", day_price: 2289, user: User.first)
@artpiece7.photos.attach(io: file29, filename: "Murnau with Church.png", content_type: "image/png")
@artpiece7.photos.attach(io: file30, filename: "Murnau with Church-2.png", content_type: "image/png")
@artpiece7.photos.attach(io: file31, filename: "Murnau with Church-3.png", content_type: "image/png")
@artpiece7.photos.attach(io: file32, filename: "Murnau with Church-4.png", content_type: "image/png")
@artpiece7.save

file21 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686260564/The_flight_of_the_dragonfly_in_front_of_the_sun-Joan_Miro_lkth9i.jpg")
file22 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686260566/The_flight_of_the_dragonfly_in_front_of_the_sun-Joan_Miro-2_qa8cxn.jpg")
file23 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686260569/The_flight_of_the_dragonfly_in_front_of_the_sun-Joan_Miro-3_jkywkl.jpg")
file24 = URI.open("https://res.cloudinary.com/dkdtzggtc/image/upload/v1686260567/The_flight_of_the_dragonfly_in_front_of_the_sun-Joan_Miro-4_oatkst.jpg")

@artpiece6 = Artpiece.new(address: "161 Sajik-ro, Jongno-gu, Seoul", title: "The flight of the dragonfly", description: "From a series of paintings Miro created in which he reduced his stock of expressive means to a minimum", artist: "Joan Miro", day_price: 1250, user: User.first)
@artpiece6.photos.attach(io: file21, filename: "The flight of the dragonfly.png", content_type: "image/png")
@artpiece6.photos.attach(io: file22, filename: "The flight of the dragonfly-2.png", content_type: "image/png")
@artpiece6.photos.attach(io: file23, filename: "The flight of the dragonfly-3.png", content_type: "image/png")
@artpiece6.photos.attach(io: file24, filename: "The flight of the dragonfly-4.png", content_type: "image/png")
@artpiece6.save

puts 'Finished..'
