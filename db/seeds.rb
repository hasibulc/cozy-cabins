# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
=======
Listing.destroy_all

10.times do 

Listing.create(street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip_code: Faker::Address.zip_code, user_id: nil, price: rand(100000..1000000), floors: rand(1..5),bedrooms: rand(1..5),bathrooms: rand(1..4), description: Faker::Hacker.say_something_smart)

end
>>>>>>> barak
