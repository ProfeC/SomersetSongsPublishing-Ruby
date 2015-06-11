class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :genres

  scope :sorted_by_title, lambda { order("songs.title ASC") }
  scope :sorted_by_title_reverse, lambda { order("songs.title DESC") }
  scope :sorted_by_release_date, lambda { order("songs.original_release_date ASC") }
  scope :sorted_by_release_date_reverse, lambda { order("songs.original_release_date DESC") }
  # scope :search, lambda { |query|
  #   where("title LIKE ?", "%#{query}%")
  # }

  def self.search(search)
    if search
      # @songs = Song.search(params[:search]).sorted_by_title
      where("title ILIKE ? OR theme ILIKE ?", "%#{search}%", "%#{search}%")
    else
      # @songs = Song.all.sorted_by_title
      all
    end
  end
end
