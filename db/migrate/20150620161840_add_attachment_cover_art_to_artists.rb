class AddAttachmentCoverArtToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :cover_art
    end
  end

  def self.down
    remove_attachment :artists, :cover_art
  end
end
