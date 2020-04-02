class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  belongs_to :category
  belongs_to :brand
  belongs_to :solder, class_name: "User"
  belongs_to :buyer, class_name: "User"
  has_many :images

end
