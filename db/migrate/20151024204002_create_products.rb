class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :initial_price
      t.integer :selling_price
      t.integer :bidding_price
      t.date :opening_date
      t.date :closing_date
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
