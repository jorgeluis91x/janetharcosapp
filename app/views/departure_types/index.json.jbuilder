json.array!(@departure_types) do |departure_type|
  json.extract! departure_type, :id, :name
  json.url departure_type_url(departure_type, format: :json)
end
