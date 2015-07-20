class Mood < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'moods_songs'

  # NOTE: Search for a mood by name
  def self.search_by_name(name)
    # where('title ILIKE ?', '%name%')
    aMood = where('title ILIKE ?', name).first

    # NOTE: Check to see if there's a mood by that name
    if aMood.present?
      aMood.id
    else
      ''
    end

    # a.each do |b|
    #   @id_list = b.id
    # end

    # @id_list
  end

  # NOTE: Search for a mood by name
  def self.search_by_id(id)
    find(id)
  end
end
