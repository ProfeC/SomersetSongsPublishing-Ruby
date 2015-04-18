class Theme < ActiveRecord::Base
  belongs_to :song

  scope :sorted_by_title, lambda { order("themes.title ASC") }

end
