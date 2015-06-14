class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs

  scope :sorted, lambda { order("albums.name ASC") }
  scope :sorted_rev, lambda { order("albums.name DESC") }
end
