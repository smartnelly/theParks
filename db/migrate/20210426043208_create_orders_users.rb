class CreateOrdersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_users do |t|
      t.integer :order_id
      t.integer :user_id
    end
  end
end
