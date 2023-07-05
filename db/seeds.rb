# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      confirm_password: Faker::Internet.password,
      type_of_investment: Faker::Lorem.word,
      gender: Faker::Gender.binary_type,
      location: Faker::Address.city,
      created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    )
  end

# Generate seed data for bonds table
10.times do
  Bond.create(
    user_id: Faker::Number.between(from: 1, to: 10),
    from: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    to: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1),
    balance: Faker::Number.between(from: 1000, to: 10000),
    interest: Faker::Number.between(from: 1, to: 10),
    created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
end

# Generate seed data for bills table
10.times do
  Bill.create(
    user_id: Faker::Number.between(from: 1, to: 10),
    from: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    to: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1),
    balance: Faker::Number.between(from: 100, to: 1000),
    interest: Faker::Number.between(from: 1, to: 5),
    created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
end

# Generate seed data for shares table
10.times do
  Share.create(
    user_id: Faker::Number.between(from: 1, to: 10),
    from: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    to: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1),
    balance: Faker::Number.between(from: 1, to: 100),
    interest: Faker::Number.between(from: 1, to: 10),
    created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
end
