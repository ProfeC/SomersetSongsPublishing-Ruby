json.array!(@contacts) do |contact|
  json.extract! contact, :id, :address, :email, :location, :name, :phone, :url
  json.url contact_url(contact, format: :json)
end
