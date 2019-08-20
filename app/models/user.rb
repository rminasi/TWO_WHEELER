class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, foreign_key: "renter_id", class_name: "Booking"
  has_many :bikes, foreign_key: "owner_id", class_name: "Bike"
end
