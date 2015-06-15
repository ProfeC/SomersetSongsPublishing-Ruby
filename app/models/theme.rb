class Theme < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'songs_themes'
end
