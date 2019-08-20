class Bike < ApplicationRecord
  belongs_to :user, only: [:owner_id]
  has_many :bookings
end
