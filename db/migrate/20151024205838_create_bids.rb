class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :bidder
      t.integer :bidding_price
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
