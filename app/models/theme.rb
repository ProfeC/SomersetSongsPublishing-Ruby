class Theme < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'songs_themes'

  scope :sorted, lambda { order("title ASC") }

  # NOTE: Search for a mood by name
  def self.search_by_name(name)
    aTheme = where('title ILIKE ?', name).first

    # NOTE: Check to see if there's a mood by that name
    if aTheme.present?
      aTheme.id
    else
      ''
    end
  end

  # NOTE: Search for a mood by name
  def self.search_by_id(id)
    find(id)
  end

  def self.make_sentence(ids)
    # NOTE: Get the titles of the selected themes
    theme_titles = []
    ids. each do |m|
      title = '"' + find(m).title.titleize + '"'
      theme_titles << title
    end

    # Put theme titles into a sentence
    theme_titles.to_sentence(two_words_connector: ' or ', last_word_connector: ' or ')
  end
end
