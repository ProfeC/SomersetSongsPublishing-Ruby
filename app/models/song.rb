class Song < ActiveRecord::Base
  belongs_to :album
  has_and_belongs_to_many :genres, :join_table => 'genres_songs'
  has_and_belongs_to_many :moods, :join_table => 'moods_songs'
  has_and_belongs_to_many :themes, :join_table => 'songs_themes'

  # Add file attachments
  has_attached_file :cover_art, :styles => { :large => "300x300", :medium => "200x200>", :thumb => "100x100>" }
  validates_attachment_content_type :cover_art, :content_type => /\Aimage\/.*\Z/

  has_attached_file :audio
  validates_attachment_content_type :audio, :content_type => /\Aaudio\/.*\Z/

  scope :sorted_by_title, lambda { order("songs.title ASC") }
  # scope :sorted_by_title_reverse, lambda { order("songs.title DESC") }
  # scope :sorted_by_release_date, lambda { order("songs.original_release_date ASC") }
  # scope :sorted_by_release_date_reverse, lambda { order("songs.original_release_date DESC") }

  # scope :search, lambda { |query|
  #   where("title LIKE ?", "%#{query}%")
  # }

  def self.search(q)

    if q
      # @songs = Song.search(params[:q]).sorted_by_title
      # where("title ILIKE ? OR theme ILIKE ? OR genre ILIKE ? OR mood ILIKE ?", "%#{q}%", "%#{q}%", "%#{q}%", "%#{q}%")
      where("title ILIKE ?", "%#{q}%")
    # else
      # @songs = Song.all
      # all
    end
  end

  # NOTE: Find songs by mood
  def self.search_mood(uid)
    song_search = Song.joins(:moods).where(moods: {id: uid})
  end
end
