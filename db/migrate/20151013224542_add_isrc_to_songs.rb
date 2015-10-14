class AddIsrcToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :isrc, :string, limit: 15
  end
end
