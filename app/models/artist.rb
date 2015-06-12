class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs

  scope :sorted, lambda { order("artists.name ASC") }
  scope :sorted_rev, lambda { order("artists.name DESC") }

end
