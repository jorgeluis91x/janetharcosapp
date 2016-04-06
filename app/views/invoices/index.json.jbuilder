json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :number, :date, :client_id, :observation, :total, :null
  json.url invoice_url(invoice, format: :json)
end
