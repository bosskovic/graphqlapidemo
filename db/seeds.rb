# frozen_string_literal: true
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

5.times do
  client = Client.create(
    name: Faker::Company.name,
    description: Faker::Lorem.paragraph
  )

  rand(3).times do
    client.students << Student.create(
      name: Faker::Name.name,
      date_of_birth: Faker::Date.birthday(min_age: 15, max_age: 22),
      place_of_birth: Faker::Address.city
    )
  end
end

p "created #{Client.count} clients and #{Student.count} students"