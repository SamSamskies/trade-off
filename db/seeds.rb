# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#helpers
def randomPhone
  (rand(900) + 100).to_s + "-" + (rand(9000) + 1000).to_s + "-" + (rand(9000) + 1000).to_s
end


# Seed categories
categories = %w(skill food housing education performance art)

categories.each do |category|
  Category.create name: category
end


# Seed users
Monban::SignUp.new( name: "Sam Samskies",
                    postal_code: Faker::Address.zip_code,
                    email: "samprofessional@gmail.com",
                    phone: randomPhone,
                    password: "p").perform

50.times do
  Monban::SignUp.new( name: Faker::Name.name,
                      postal_code: Faker::Address.zip_code,
                      email: Faker::Internet.email,
                      phone: randomPhone,
                      password: "p").perform
end


#Seed provisions
tags = %w(good service)

User.all.each do |user|
  user.provisions.create tag: tags.shuffle.first,description: Faker::Lorem.words.join(" "), category: Category.all.shuffle.first
  user.provisions.create tag: tags.shuffle.first, description: Faker::Lorem.words.join(" "), category: Category.all.shuffle.first
end
