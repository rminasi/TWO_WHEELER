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
6.times do |i|
  user = User.create!(email: "user_#{i}@test.com", password: 123123)
  puts "Creating 3 bike for #{user.email}"
  4.times do |i|
    bike_url = ["https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      'https://images.pexels.com/photos/100582/pexels-photo-100582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.unsplash.com/photo-1529690993619-3f2481aeda21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
      'https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
      'https://images.unsplash.com/photo-1505705694340-019e1e335916?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80',
      'https://images.unsplash.com/photo-1513540870164-07649a1d676f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1530263503756-b382295fd927?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1484144709249-a643e3720d13?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1580&q=80',
      'https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1496104570434-e8719f0c1c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1560203452-a76df38ba8fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1551091016-1cdefa81989d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1549216963-72c1712c1196?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1562407080-dbdca31afe77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1562021536-8a37c69dbf84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'].sample
    bike = Bike.new(name:['Touring Bike', 'Brand New Bike', 'Mountain Bike', 'Cross Bike', 'Road Bike', 'Tri Bike', 'Cruiser', 'Hybrid', 'Cool Bike', 'Bike for tall person', 'Fast Road Bike', 'Best Cross Bike',].sample, description: ["great bike", "This bike can really get you around", "I love this bike. Treat it nicely.", "Super bike up for rental while I'm out of town.", "Just changed wheels and bled brakes. Works great.",
    'I have enjoyed how great the pedals are', 'This bike is really cool.', 'I have so many bikes and I would love to make extra money, so rent this bike!', 'Cool bike available for rent.'].sample, owner: user, location: ['Hackney, UK', 'Paris, France', 'Berlin, Germany', 'Canary Wharf, London', 'Chelsea, London', 'Greenwich, London', 'Lewisham, London'].sample, price_per_day: 20)
    bike.image = bike_url
    bike.save!
  end
end

puts 'Finished!'


# bikeOne = Bike.create(location: '16 Villa Gaudelet, Paris', name: 'Le Wagon HQ', description: 'This is an amazing bike', image: 'https://images.pexels.com/photos/100582/pexels-photo-100582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
