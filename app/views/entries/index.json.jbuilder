json.array!(@entries) do |entry|
  json.extract! entry, :id, :total_invoice_id, :entry_date, :entry_type_id, :observation, :payment_type, :deposit
  json.url entry_url(entry, format: :json)
end
