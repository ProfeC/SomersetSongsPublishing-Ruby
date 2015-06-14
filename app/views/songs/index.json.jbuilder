json.array!(@songs) do |song|
  json.extract! song, :id, :title, :description, :original_release_date, :length, :album
  json.url song_url(song, format: :json)
end
