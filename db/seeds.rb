# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Removing old user data'
Offer.delete_all
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
    location: Faker::Address.city
  )
  user.save!
end
puts 'Finished making users!'

puts 'Starting seed to render offer data for testing...'

puts 'Removing old offer data'
Offer.delete_all

puts 'Creating 15 offers'
15.times do
  offer = Offer.new(
    title: Faker::Book.title,
    description: Faker::Hipster.paragraph,
    location: Faker::Address.city,
    price: rand(1.0...100.0).round(2),
    start_time: Faker::Time.backward(days: rand(1...30), period: :evening),
    end_time: Faker::Time.forward(days: rand(1..3), period: :evening),
    user_id: rand(1..20) # TODO: breaks if run twice needs to drop DB
  )
  offer.save!
end

puts '15 offers created!'

# REVIEW
puts 'Starting seed to render review data for testing...'

puts 'Removing old review data'
OfferReview.delete_all

puts 'Creating 15 Reviews'
15.times do
  review = OfferReview.new(
    description: Faker::GreekPhilosophers.quote,
    stars: rand(1..5),
    offer_id: rand(1..14)
  )
  review.save!
end

puts '15 offers created!'