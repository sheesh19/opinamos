# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database..."
Company.destroy_all
User.destroy_all
Review.destroy_all

puts 'Creating 50 fake companies...'
50.times do
  company = Company.new(
    name: Faker::Company.name,
    category: Faker::Company.industry,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    country: "#{Faker::Address.country}",
    phone_number: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    website: Faker::Internet.domain_name,
    description: Faker::Marketing.buzzwords,
    image: Faker::Company.logo
  )
  company.save!
end

puts 'Creating 10 fake users...'
10.times do
  users = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.unique.name,
    last_name: Faker::Name.unique.name,
    password: Faker::Name.unique.name
  )
  users.save!
end

puts 'Creating 20 fake reviews...'
10.times do
  reviews = Review.new(
    user_id: User.all.sample.id,
    company_id: Company.all.sample.id,
    description: Faker::TvShows::FamilyGuy.quote,
    score: rand(0..5)
  )
  reviews.save!
end

puts 'Finished!'