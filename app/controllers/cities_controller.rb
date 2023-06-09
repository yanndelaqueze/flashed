class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_city, only: %i[show]

  def index
    @cities = City.joins(:invaders).group('cities.id').order('COUNT(invaders.id) DESC')

    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude,
        marker_html: render_to_string(partial: "marker", locals: { city: city })
      }
    end
    @countries = City.select(:country).order(country: :asc).map(&:country).uniq
  end

  def show
    @invaders = @city.invaders.order(name: :asc)
    @bookmark = Bookmark.new
    authorize @city
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.required(:city).permit(:country, :invasion_date)
  end
end
