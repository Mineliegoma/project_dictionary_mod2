# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Quote.delete_all 
Favorite.delete_all



5.times do
    
User.create(name: Faker::Name.name , password: Faker::Number.number(digits: 3))
end

20.times do
    Quote.create(author: Faker::Name.name , content:  Faker::Quote.yoda )
end

20.times do
    Favorite.create(user_id: User.all.sample.id, quote_id: Quote.all.sample.id)
end