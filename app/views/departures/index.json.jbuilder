json.array!(@departures) do |departure|
  json.extract! departure, :id, :entry_date, :departure_type_id, :detail, :total_value
  json.url departure_url(departure, format: :json)
end
