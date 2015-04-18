class Genre < ActiveRecord::Base
  belongs_to :song

  scope :sorted_by_title, lambda { order("genres.title ASC") }

end
