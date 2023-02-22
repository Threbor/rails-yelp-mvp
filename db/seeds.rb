# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

CATEGORYS = %w(chinese italian japanese french belgian)

5.times {
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: CATEGORYS.sample)
  5.times {
    Review.create!(restaurant_id: Restaurant.last.id, content: Faker::Markdown.emphasis, rating: 5)
  }

}
