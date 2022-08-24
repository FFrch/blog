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
article1 = {date: Date.today, title: "Lorem ipsum dolor sit...", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pretium hendrerit enim. In nec metus elit. Aliquam neque lectus, molestie sed dui in, accumsan mollis orci. Sed scelerisque lobortis posuere. Sed nec nunc eget est ultrices egestas. Etiam porta facilisis rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam dignissim velit a molestie laoreet. Etiam elementum varius facilisis. Duis pharetra sodales varius. Suspendisse faucibus lectus eu ante porta ultricies. Morbi volutpat pharetra purus in ultricies."}
article2 = {date: Date.today, title: "Lorem ipsum dolor sit...", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pretium hendrerit enim. In nec metus elit. Aliquam neque lectus, molestie sed dui in, accumsan mollis orci. Sed scelerisque lobortis posuere. Sed nec nunc eget est ultrices egestas. Etiam porta facilisis rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam dignissim velit a molestie laoreet. Etiam elementum varius facilisis. Duis pharetra sodales varius. Suspendisse faucibus lectus eu ante porta ultricies. Morbi volutpat pharetra purus in ultricies."}
article3 = {date: Date.today, title:"Les éditeurs de sites web en ligne" , content: "Il existe une solution très répandue pour créer des sites web de toutes sortes – dont des blogs – qui est de se servir d’un créateur de sites accessible en ligne. Ces derniers présentent l’avantage de proposer de créer un blog gratuitement et d’être très simples à utiliser. Ils vous permettent effectivement dans la plupart des cas d’accéder à un aperçu direct de vos pages et à un éditeur très simple à manier."}
article4 = {date: Date.today, title: "Comment créer un blog ?", content: "Si vous débutez dans cette activité avant de chercher comment rédiger un article de blog, il se peut que vous vous demandiez comment créer un blog de qualité. En effet, en cherchant comment faire sur Internet, il se peut que vous soyez quelque peu noyé sous des tonnes d’informations."}

[article1, article2, article3, article4].each do |attributes|
  article = Article.create!(attributes)
  puts "Created #{article.title}"
end
puts "Finished!"
