class Genre < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'genres_songs'

  def self.search_by_song(id)
    where("song.id ILIKE ?", "#{id}")
  end

end # end class
