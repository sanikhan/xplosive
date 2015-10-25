class CreatePreproducts < ActiveRecord::Migration
  def change
    create_table :preproducts do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :availibility
      t.string :picture

      t.timestamps null: false
    end
  end
end
