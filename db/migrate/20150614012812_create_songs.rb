class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.date :original_release_date
      t.string :length
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :songs, :title, unique: true
    # add_index :songs, :album
  end
end
