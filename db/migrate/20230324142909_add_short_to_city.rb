class AddShortToCity < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :short, :string
  end
end
