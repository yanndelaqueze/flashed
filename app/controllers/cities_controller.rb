class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_city, only: %i[show]

  def index
    @cities = City.all
  end

  def markers
    @cities = City.all
    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude,
        city_info_map_html: render_to_string(partial: "city_info_map", locals: { city: city }),
        city_marker_html: render_to_string(partial: "city_marker", locals: { city: city })
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
