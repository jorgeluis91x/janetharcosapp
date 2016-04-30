json.array!(@total_invoices) do |total_invoice|
  json.extract! total_invoice, :id, :number, :total_value
  json.url total_invoice_url(total_invoice, format: :json)
end
