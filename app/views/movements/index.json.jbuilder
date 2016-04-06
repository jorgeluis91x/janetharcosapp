json.array!(@movements) do |movement|
  json.extract! movement, :id, :invoice_id, :date, :sum, :movement_type_id, :observation
  json.url movement_url(movement, format: :json)
end
