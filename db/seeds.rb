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



30.times do
    user = User.new
    user.name = Faker::Name.name
    user.email = Faker::Internet.email
    user.password = "123456"
    user.password_confirmation = "123456"
    user.save!
end

20.times do
    Quote.create(author: Faker::Name.name , content:  Faker::Quote.yoda )
end

20.times do
    Favorite.create(user_id: User.all.sample.id, quote_id: Quote.all.sample.id)
end