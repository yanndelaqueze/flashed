class AddUrlToInvaders < ActiveRecord::Migration[7.0]
  def change
    add_column :invaders, :url, :string
  end
end
