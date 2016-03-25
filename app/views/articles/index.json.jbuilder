json.array!(@articles) do |article|
  json.extract! article, :id, :reference, :product_category_id, :detail, :quantity, :size, :provider_id, :purchase_value, :sales_value, :rental_value, :status
  json.url article_url(article, format: :json)
end
