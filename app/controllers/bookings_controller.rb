class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.renter = current_user
    @booking.bike = @bike
    if @booking.save
      redirect_to bike_booking_path(@bike, @booking)
    else
      render bike_path(@bike)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:rental_date, :return_date, :bike_id)
  end
end
