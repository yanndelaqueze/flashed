class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.references :invader, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :flashed
      t.float :lat
      t.float :lng
      t.string :note

      t.timestamps
    end
  end
end
