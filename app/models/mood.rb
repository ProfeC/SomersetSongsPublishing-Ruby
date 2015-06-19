class Mood < ActiveRecord::Base
  has_and_belongs_to_many :songs, :join_table => 'moods_songs'
end
