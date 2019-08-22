class Bike < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
