json.array!(@preproducts) do |preproduct|
  json.extract! preproduct, :id, :name, :price, :description, :availibility, :picture
  json.url preproduct_url(preproduct, format: :json)
end
