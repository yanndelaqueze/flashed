class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.references :bookmark, null: false, foreign_key: true
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
