# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

City.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
User.destroy_all
Gossip.destroy_all
TagGossip.destroy_all

# seed pour les city
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

# seed pour les tag
10.times do
  Tag.create!(
    title: Faker::Lorem.word
  )
end

# seed message privés
20.times do
  PrivateMessage.create!(
    content: Faker::Quote.matz,
    sender_id: rand(1..10),
    recipient_id: rand(1..10)
  )
end


# seed user
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: rand(23..77),
    city_id: City.all.sample.id
  )
end

# seed gossip
20.times do
  Gossip.create!(
    title: Faker::Lorem.sentence, #(3)
    content: Faker::Lorem.paragraph, #(3)
    user_id: User.all.sample.id
  )
end

# seed tag_gossip
30.times do
  TagGossip.create!(
    tag_id: Tag.all.sample.id,
    gossip_id: Gossip.all.sample.id
  )
end