class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def new
    @bikes = Bike.new
  end

  def create
  end

  def show
    @bikes = Bike.find(params[:id])
  end
end
