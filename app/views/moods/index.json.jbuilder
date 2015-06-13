json.array!(@moods) do |mood|
  json.extract! mood, :id, :title, :description
  json.url mood_url(mood, format: :json)
end
