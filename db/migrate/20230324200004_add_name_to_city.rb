class AddNameToCity < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :name, :string
  end
end
