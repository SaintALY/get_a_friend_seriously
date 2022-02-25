# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'faker'

puts 'Removing old user data'
User.delete_all

puts 'Creating 5 new male users..'

file = URI.open('https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260')
user = User.new(
  firstname: Faker::Name.male_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Berlin'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
user = User.new(
  firstname: Faker::Name.male_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Hamburg'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1509460913899-515f1df34fea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
user = User.new(
  firstname: Faker::Name.male_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Leipzig'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80')
user = User.new(
  firstname: Faker::Name.male_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Hanover'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1507038732509-8b1a9623223a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
user = User.new(
  firstname: Faker::Name.male_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Rostock'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

puts 'Creating 5 new female users..'

file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
user = User.new(
  firstname: Faker::Name.female_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Cottbus'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1532073150508-0c1df022bdd1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80')
user = User.new(
  firstname: Faker::Name.female_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Dresden'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1526413138270-8e3dedaecf19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80')
user = User.new(
  firstname: Faker::Name.female_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Chemnitz'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1536766768598-e09213fdcf22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80')
user = User.new(
  firstname: Faker::Name.female_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Kreuzberg'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1524638431109-93d95c968f03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
user = User.new(
  firstname: Faker::Name.female_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Bremen'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1469504512102-900f29606341?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
user = User.new(
  firstname: Faker::Name.female_first_name,
  lastname: Faker::Name.last_name,
  description: 'Pro socializer',
  email: Faker::Internet.email,
  interests: Faker::Hobby.activity,
  password: '123456',
  location: 'Bielefeld'
)
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

puts 'Finished making users!'

puts 'Starting seed to render offer data for testing...'

puts 'Removing old offer data'
Offer.delete_all

puts 'Creating 16 offers'

offer = Offer.new(
    title: 'Will bake you a cake',
    description: 'If you need someone to bake you a cake for your birthday, I can help.',
    location: 'Berlin',
    price: rand(1.0...100.0).round(2),
    user_id: 1
  )
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Hamburg',
  price: rand(1.0...100.0).round(2),
  user_id: 2
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Leipzig',
  price: rand(1.0...100.0).round(2),
  user_id: 3
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Hanover',
  price: rand(1.0...100.0).round(2),
  user_id: 4
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Dresden',
  price: rand(1.0...100.0).round(2),
  user_id: 5
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Cologne',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Bremen',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Bielefeld',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Frankfurt',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Munich',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Essen',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Halle',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Wurzburg',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Augsburg',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.female_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Wolfsburg',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

offer = Offer.new(
  title: Faker::Name.male_first_name,
  description: Faker::Hipster.paragraph,
  location: 'Kassel',
  price: rand(1.0...100.0).round(2),
  user_id: rand(1..10)
)
offer.save!

puts '16 offers created!'
