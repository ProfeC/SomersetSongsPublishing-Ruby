class Mood < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'moods_songs'

  scope :sorted, lambda { order("title ASC") }

  # NOTE: Search for a mood by name
  def self.search_by_name(name)
    aMood = where('title ILIKE ?', name).first

    # NOTE: Check to see if there's a mood by that name
    if aMood.present?
      aMood.id
    else
      ''
    end
  end

  # NOTE: Search for a mood by name
  def self.search_by_id(id)
    find(id)
  end

  def self.make_sentence(ids)
    # NOTE: Get the titles of the selected moods
    mood_titles = []
    ids. each do |m|
      title = '"' + find(m).title.titleize + '"'
      mood_titles << title
    end

    # Put mood titles into a sentence
    mood_titles.to_sentence(two_words_connector: ' or ', last_word_connector: ' or ')
  end
end
