# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create!(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: "helloworld",
    confirmed_at: "2016-08-4 18:00:00"
  )
end
users = User.all

10.times do
  UserProfile.create!(
    user: users.sample,
    full_name: Faker::Name.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    shipping_address: Faker::Address.street_address,
    wedding_date: Faker::Date.forward(23),
    bridals_date: Faker::Date.forward(20),
    height: Faker::Number.decimal(2),
    over_bust: Faker::Number.decimal(2),
    bust: Faker::Number.decimal(2),
    under_bust: Faker::Number.decimal(2),
    bra_size: Faker::Number.decimal(2),
    waist: Faker::Number.decimal(2),
    hip: Faker::Number.decimal(2),
    natural_waist: Faker::Number.decimal(2),
    shoulder_to_shoulder: Faker::Number.decimal(2),
    shoulder_to_waist: Faker::Number.decimal(2),
    waist_to_floor: Faker::Number.decimal(2),
    rise: Faker::Number.decimal(2),
    sleeve_length: Faker::Number.decimal(2),
    arm_hole: Faker::Number.decimal(2),
    bicep: Faker::Number.decimal(2),
    forearm: Faker::Number.decimal(2),
    deposit: Faker::Boolean.boolean,
    paid_in_full: Faker::Boolean.boolean,
    shipping: Faker::Boolean.boolean
  )
end
user_profiles = UserProfile.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{UserProfile.count} user profiles created"
