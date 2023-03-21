class AddAddressToInvader < ActiveRecord::Migration[7.0]
  def change
    add_column :invaders, :address, :string
  end
end
