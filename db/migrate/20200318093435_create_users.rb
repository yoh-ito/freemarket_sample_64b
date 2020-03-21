class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.string :e_mail, null: false, unique: true
      t.string :password, null: false, unique: true
      t.string :users_sales_status, null: false
      
      t.timestamps
    end
  end
end
