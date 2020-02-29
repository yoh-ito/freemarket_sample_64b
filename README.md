
##  itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|item_status|text|null: false|
|price|integer|null: false|
|category|references|null: false, foreign_key:true|
|brand|references|null: false, foreign_key:true|
|solder_id|references|class_name:"User"|
|buyer_id|references|class_name:"User"|

### Association
- belongs_to :brand
- has_many :images
- has_one :category
- belongs_to :solder, class_name: "User"
- belongs_to :buyer, class_name: "User"

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|
|birthday|date|null: false|
|delivery_charge|text|null: false|
|delivery_area|text|null: false|
|delivery_days|text|null: false|

### Association
- has_many :items
- has_one :credit_card
- belongs_to :user
- has_many :seling_items, ->{where(buyer_id is NULL)}, class_name: "User", foreign_key: "solder_id"
- has_many :buy_items, class_name: "User", foreign_key: "solder_id"
- has_many :sold_items, ->{where(buyer_id is not NULL)}, class_name: "Item",foreign_key: "solder_id"

### credit_cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null:faise, foreign_key:true|
|customer_id|string|null:false|
|card_id|string|null:false|

### Association
- belongs_to :user

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|url|string|null: false|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|genre|string|null: false|
|subgenre|string|null: false|
|detail|string|null: false|
|item|references|null: false, foreign_key: true|

### Association
- belongs_to :item

## item_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|item|references|null: false, foreign_key: true|
|category|references|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :category


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand|string|null: false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item
