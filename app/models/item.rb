class Item < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :solder, class_name: "User"
  belongs_to :buyer, class_name: "User"
  has_many :images, inverse_of: :item
  accepts_nested_attributes_for :images
  
  

  validates :name, :text, :item_status, :price, :delivery_charge, :delivery_area, :delivery_days, :category, presence: true
end
