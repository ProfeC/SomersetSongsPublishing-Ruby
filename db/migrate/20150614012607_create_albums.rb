class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.date :original_release_date
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :albums, :title, unique: true
    # add_index :albums, :artist_id
  end
end
