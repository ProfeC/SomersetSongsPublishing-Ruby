class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist

  scope :sorted_by_title, lambda { order("songs.title ASC") }
  scope :sorted_by_title_reverse, lambda { order("songs.title DESC") }
  scope :sorted_by_release_date, lambda { order("songs.original_release_date ASC") }
  scope :sorted_by_release_date_reverse, lambda { order("songs.original_release_date DESC") }
  # scope :search, lambda { |query|
  #   where("title LIKE ?", "%#{query}%")
  # }
end
