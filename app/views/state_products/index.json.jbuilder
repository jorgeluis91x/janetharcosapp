json.array!(@state_products) do |state_product|
  json.extract! state_product, :id, :name
  json.url state_product_url(state_product, format: :json)
end
