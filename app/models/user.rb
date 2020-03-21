class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  has_one :credit_card
  has_many :buy_items, foreign_key: "buyer_id", class_name: "Item"
  has_many :seling_items, -> { where("buyer_id is NULL") }, foreign_key: "solder_id", class_name: "Item"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "solder_id", class_name: "Item"
end
