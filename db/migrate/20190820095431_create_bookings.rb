class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :renter_id
      t.integer :bike_id
      t.references :user, foreign_key: true
      t.references :bike, foreign_key: true

      t.timestamps
    end
  end
end
