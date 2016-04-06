json.array!(@rentals) do |rental|
  json.extract! rental, :id, :invoice_detail_id, :start_date, :final_date, :deposit, :state, :observation
  json.url rental_url(rental, format: :json)
end
