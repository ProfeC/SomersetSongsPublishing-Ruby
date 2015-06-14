json.array!(@genres) do |genre|
  json.extract! genre, :id, :title, :description
  json.url genre_url(genre, format: :json)
end
