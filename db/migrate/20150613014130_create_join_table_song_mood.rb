class CreateJoinTableSongMood < ActiveRecord::Migration
  def change
    create_join_table :songs, :moods do |t|
      t.index [:song_id, :mood_id]
      t.index [:mood_id, :song_id]
    end
  end
end
