json.array!(@products) do |product|
  json.extract! product, :id, :name, :initial_price, :selling_price, :bidding_price, :opening_date, :closing_date, :category_id, :subcategory_id, :user_id
  json.url product_url(product, format: :json)
end
