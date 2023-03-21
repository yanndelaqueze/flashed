class CreateInvaders < ActiveRecord::Migration[7.0]
  def change
    create_table :invaders do |t|
      t.string :name
      t.references :city, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
