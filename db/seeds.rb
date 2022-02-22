# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Removing old user data'
User.delete_all

puts 'Creating 10 new male users..'
10.times do
  user = User.new(
    firstname: Faker::Name.male_first_name,
    lastname: Faker::Name.last_name,
    description: Faker::ChuckNorris.fact,
    email: Faker::Internet.email,
    interests: Faker::Hobby.activity,
    password: '123456',
    picture_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['male_headshot']),
    location: Faker::Address.city
  )
  user.save!
end

puts 'Creating 10 new female users..'
10.times do
  user = User.new(
    firstname: Faker::Name.female_first_name,
    lastname: Faker::Name.last_name,
    description: Faker::ChuckNorris.fact,
    email: Faker::Internet.email,
    interests: Faker::Hobby.activity,
    password: '123456',
    picture_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['female_headshot']),
    location: Faker::Address.city
  )
  user.save!
end
puts 'Finished making users!'
