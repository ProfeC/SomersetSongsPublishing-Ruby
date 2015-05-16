class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, :null => false
      t.text :description
      t.date :original_release_date
      t.string :permalink, index: true
      t.string :file_uri
      t.string :theme
      t.string :tag
      t.string :length
      t.references :album, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
