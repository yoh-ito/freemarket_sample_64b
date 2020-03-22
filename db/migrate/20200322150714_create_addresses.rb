class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :users,        null: false, foreign_key: true
      t.integer :postcode,          null: false
      t.string :prefecture,         null: false
      t.string :city,               null: false
      t.string :block,              null: false
      t.string :building,           null: false
      t.integer :phone_number,      null: false
      t.timestamps
    end
  end
end
