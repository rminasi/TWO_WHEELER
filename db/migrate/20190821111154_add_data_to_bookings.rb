class AddDataToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :rental_date, :date
    add_column :bookings, :return_date, :date
  end
end
