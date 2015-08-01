class Genre < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'genres_songs'

  scope :sorted, lambda { order("title ASC") }

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

  def self.make_sentence(ids)
    # NOTE: Get the titles of the selected genres
    genre_titles = []
    ids. each do |m|
      title = '"' + find(m).title.titleize + '"'
      genre_titles << title
    end

    # Put genre titles into a sentence
    genre_titles.to_sentence(two_words_connector: ' or ', last_word_connector: ' or ')
  end

end # end class
