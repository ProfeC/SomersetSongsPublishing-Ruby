class Genre < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'genres_songs'

  def self.search_by_song(id)
    where("song.id ILIKE ?", "#{id}")
  end

  # NOTE: Search for a genre by name
  def self.search_by_name(name)
    aGenre = where('title ILIKE ?', name).first

    # NOTE: Check to see if there's a genre by that name
    if aGenre.present?
      aGenre.id
    else
      ''
    end
  end

  # NOTE: Search for a genre by name
  def self.search_by_id(id)
    find(id)
  end
end # end class
