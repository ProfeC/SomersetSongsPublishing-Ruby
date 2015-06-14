json.array!(@albums) do |album|
  json.extract! album, :id, :title, :description, :original_release_date, :artist
  json.url album_url(album, format: :json)
end
