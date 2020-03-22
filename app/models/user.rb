class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  has_one :credit_card
  has_many :buy_items, class_name: "Item", foreign_key: "buyer_id"
  has_many :seling_items, class_name: "Item", foreign_key: "solder_id"
  has_many :sold_items, class_name: "Item",foreign_key: "solder_id"

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i

  validates :last_name,           presence: true
  validates :first_name,          presence: true
  validates :last_name_kana,      presence: true
  validates :first_name_kana,     presence: true
  validates :nickname,            presence: true
  validates :birthday,            presence: true
  validates :email,               presence: true, uniqueness: true
  validates :encrypted_password,  presence: true

end
