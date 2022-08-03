# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Article.destroy_all

puts "Creating articles..."
article1 = {date: Date.today, title: "Coucou", content: "Coucou tout le monde!"}
article2 =  {date: Date.today, title: "Salut", content: "Salut salut!!"}

[article1, article2].each do |attributes|
  article = Article.create!(attributes)
  puts "Created #{article.title}"
end
puts "Finished!"
