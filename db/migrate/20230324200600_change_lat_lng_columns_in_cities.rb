class ChangeLatLngColumnsInCities < ActiveRecord::Migration[7.0]
  def change
    rename_column :cities, :lat, :latitude
    rename_column :cities, :lng, :longitude
  end
end
