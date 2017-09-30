# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.all

25.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::LordOfTheRings.location,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    )
    5.times do
      review = Review.new(
        content: Faker::Lorem.sentence,
        rating: Random.new.rand(0..5),
        )
      review.restaurant = restaurant
      review.save!
    end
    restaurant.save!
end
