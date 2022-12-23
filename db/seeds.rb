# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Product.destroy_all
#
# 10.times do|p|
#   Product.create(name: Faker::Commerce.unique.product_name,
#                      price: rand(5000..100_000 ).to_i,
#                      description: Faker::Hipster.sentence(rand(3..6))
#   )
#   puts "Creating #{p.name}"
#   downloaded_image =  open("http://source.unsplash.com/600x600/?#{p.name}")
#   p.image.attach(io: downloaded_image, filename: "m-#{p.name}.jpg")
# end