class Theme < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'songs_themes'

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
end
