class BikesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.geocoded
    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })
      }
    end
  end

  def new
    @bike = Bike.new
    @booking = Booking.new
  end

  def destroy
    @bike = Bike.find(params[:id])
    bike.destroy
    redirect_to bike_path
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.owner = current_user
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:name, :description, :image)
  end
end
