class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :country
      t.date :invasion_date
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
