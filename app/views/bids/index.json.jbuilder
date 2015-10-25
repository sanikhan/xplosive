json.array!(@bids) do |bid|
  json.extract! bid, :id, :bidder, :bidding_price, :user_id, :product_id
  json.url bid_url(bid, format: :json)
end
