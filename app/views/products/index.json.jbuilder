json.array!(@products) do |product|
  json.extract! product, :id, :model, :description, :jedi, :price, :stock_quantity
  json.url product_url(product, format: :json)
end
