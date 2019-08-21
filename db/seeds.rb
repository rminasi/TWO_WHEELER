# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Bike.create(owner_id: 'Susan', image: 'FatBike.jpg')
User.destroy_all
Bike.destroy_all

owner = User.create!(email: "sam@gmail.com", password: "123456")
bike_url = "https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
bike = Bike.new(name: "Touring Bike", description: "great bike")
bike.remote_photo_url = bike_url
bike.save!
