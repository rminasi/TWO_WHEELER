class PagesController < ApplicationController
  def home
  end

  def search
    @bike = Bike.all
    if @bike.nil?
      @bike = Bike.where(name: "")
    else
      @bike = Bike.where(name: params)
    end
  end
end
