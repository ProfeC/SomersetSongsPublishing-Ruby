class Tag < ActiveRecord::Base
  belongs_to :song

  scope :sorted_by_title, lambda { order("tags.title ASC") }

end
