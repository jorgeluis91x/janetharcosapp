json.array!(@invoice_details) do |invoice_detail|
  json.extract! invoice_detail, :id, :invoice_id, :article_id, :quantity, :unit_value, :state_product_id, :observation
  json.url invoice_detail_url(invoice_detail, format: :json)
end
