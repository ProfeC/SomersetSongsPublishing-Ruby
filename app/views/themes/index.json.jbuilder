json.array!(@themes) do |theme|
  json.extract! theme, :id, :title, :description
  json.url theme_url(theme, format: :json)
end
