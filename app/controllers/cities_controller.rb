class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_city, only: %i[show]

  def index
    @cities = City.all
    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude
      }
    end
  end

  def show
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.required(:city).permit(:country, :invasion_date)
  end
end