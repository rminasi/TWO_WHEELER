class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
  end

  def show
    @bike = Bike.find(params[:id])
  end
end
