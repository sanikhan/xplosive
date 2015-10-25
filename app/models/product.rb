class Product < ActiveRecord::Base
 attr_accessor :category_id
  belongs_to :subcategory
  has_many :bids
  belongs_to :user
  has_many :product_attachments
   accepts_nested_attributes_for :product_attachments

   def self.search(search)
  where("name LIKE ?", "%#{search}%")
end

end
