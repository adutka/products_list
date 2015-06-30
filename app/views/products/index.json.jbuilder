json.array!(@products) do |product|
  json.extract! product, :id, :sku, :name, :field1, :field2, :field3, :field4, :dimension, :price
  json.url product_url(product, format: :json)
end
