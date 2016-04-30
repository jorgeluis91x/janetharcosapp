json.array!(@entry_types) do |entry_type|
  json.extract! entry_type, :id, :name
  json.url entry_type_url(entry_type, format: :json)
end
