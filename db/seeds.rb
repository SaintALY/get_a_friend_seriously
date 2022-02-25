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
Offer.delete_all
User.delete_all

puts 'Creating 5 new male users..'

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ67_zhQDAs8XpSkuSrjgWgF3zTx4YVSAqag&usqp=CAU')
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

file = URI.open('https://media-api.xogrp.com/images/1420b655-1e40-477f-9169-59833a888287~cr_0.0.1551.2045')
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

file = URI.open('https://www.guinnessworldrecords.com/Images/rocky_tcm25-589567.jpg')
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

file = URI.open('https://arc-anglerfish-arc2-prod-bostonglobe.s3.amazonaws.com/public/W2QLGEFQDYI6PM5RAZOYS35A3Y.jpg')
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
    title: 'Ikea friend',
    description: "I'll jump on an ikea table and sing to you.",
    location: 'Berlin',
    price: rand(1.0...100.0).round(2),
    user_id: 1
  )
offer.save!

offer = Offer.new(
  title: 'Friends with ben..',
  description: "With benjamin franklin figurine collections! If you like figurines as much as me, let's be friends.",
  location: 'Hamburg',
  price: rand(1.0...100.0).round(2),
  user_id: 2
)
offer.save!

offer = Offer.new(
  title: 'Fortnite friend',
  description: 'Do you like fortnite? I like fortnie. I play lots of fortnite, how about you? Fortnite?',
  location: 'Leipzig',
  price: rand(1.0...100.0).round(2),
  user_id: 3
)
offer.save!

offer = Offer.new(
  title: 'Trains?',
  description: "Choo choo choose me. Toy trains are the best, let's play with our trains together",
  location: 'Hanover',
  price: rand(1.0...100.0).round(2),
  user_id: 4
)
offer.save!

offer = Offer.new(
  title: 'Will bake you a cake',
  description: 'If you need someone to bake you a cake for your birthday, I can help.',
  location: 'Dresden',
  price: rand(1.0...100.0).round(2),
  user_id: 5
)
offer.save!

offer = Offer.new(
  title: 'Coder buddy',
  description: "Do you like ruining your life as much as I do? Then let's code together",
  location: 'Cologne',
  price: rand(1.0...100.0).round(2),
  user_id: 6
)
offer.save!

offer = Offer.new(
  title: 'Trains?',
  description: "Choo choo choose me. Toy trains are the best, let's play with our trains together",
  location: 'Bremen',
  price: rand(1.0...100.0).round(2),
  user_id: 7
)
offer.save!

offer = Offer.new(
  title: 'Lets go feed the ducks',
  description: "Let's go down to the park and feed the ducks, how does that sound?",
  location: 'Bielefeld',
  price: rand(1.0...100.0).round(2),
  user_id: 8
)
offer.save!

offer = Offer.new(
  title: 'Camp friendzone',
  description: "Do you like camping? Do you want to camp with a friend? Let's camp together.",
  location: 'Frankfurt',
  price: rand(1.0...100.0).round(2),
  user_id: 9
)
offer.save!

offer = Offer.new(
  title: 'Berghain Friend',
  description: "Need help getting in? Need a cool friend? I'll help you out.",
  location: 'Munich',
  price: rand(1.0...100.0).round(2),
  user_id: 10
)
offer.save!

offer = Offer.new(
  title: 'Museums are cool',
  description: 'So is startrek, what a friend to watch startrek with?',
  location: 'Essen',
  price: rand(1.0...100.0).round(2),
  user_id: 11
)
offer.save!

offer = Offer.new(
  title: 'Kite flying buddy',
  description: "Because 'go fly a kite' doesn't mean you gotta do it alone.",
  location: 'Halle',
  price: rand(1.0...100.0).round(2),
  user_id: 6
)
offer.save!

offer = Offer.new(
  title: 'Dan here',
  description: 'Will be your friend, we can complain about Tony if you want..',
  location: 'Wurzburg',
  price: rand(1.0...100.0).round(2),
  user_id: 3
)
offer.save!

offer = Offer.new(
  title: 'Harry potter marathon buddy',
  description: 'I love potter, lets be friends.',
  location: 'Augsburg',
  price: rand(1.0...100.0).round(2),
  user_id: 9
)
offer.save!

offer = Offer.new(
  title: 'Amadeous',
  description: 'I like nuts',
  location: 'Wolfsburg',
  price: rand(1.0...100.0).round(2),
  user_id: 3
)
offer.save!


puts '15 offers created!'


