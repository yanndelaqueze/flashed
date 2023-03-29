class AddCoordinatesToInvaders < ActiveRecord::Migration[7.0]
  def change
    add_column :invaders, :latitude, :float
    add_column :invaders, :longitude, :float
  end
end
