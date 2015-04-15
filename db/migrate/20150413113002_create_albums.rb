class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, :null => false
      t.text :description
      t.date :original_release_date
      t.string :permalink, index: true
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
