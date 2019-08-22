# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Bike.create(owner_id: 'Susan', image: 'FatBike.jpg')
Booking.destroy_all
Bike.destroy_all
User.destroy_all

puts "Creating 5 users"
5.times do |i|
  user = User.create!(email: "user_#{i}@test.com", password: 123123)
  puts "Creating 3 bike for #{user.email}"
  5.times do |i|
    bike_url = "https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
    bike = Bike.new(name:['Touring Bike', 'Great Bike', 'Mountain Bike', 'Cross Bike', 'Road Bike'].sample, description: ["great bike", "This bike can really get you around", "I love this bike. Treat it nicely.", "Super bike up for rental while I'm out of town.", "Just changed wheels and bled brakes. Works great."
    ].sample, owner: user, location: ['Hackney, UK', 'Paris, France', 'Berlin, Germany'].sample, price_per_day: 20)
    bike.image = bike_url
    bike.save!
  end
end

puts 'Finished!'


# bikeOne = Bike.create(location: '16 Villa Gaudelet, Paris', name: 'Le Wagon HQ', description: 'This is an amazing bike', image: 'https://images.pexels.com/photos/100582/pexels-photo-100582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
