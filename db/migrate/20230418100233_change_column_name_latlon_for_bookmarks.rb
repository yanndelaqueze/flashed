class ChangeColumnNameLatlonForBookmarks < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookmarks, :lat, :latitude
    rename_column :bookmarks, :lng, :longitude
  end
end
