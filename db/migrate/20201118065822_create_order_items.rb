class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :item_id
      t.integer :order_id
      t.integer :amount
      t.integer :making_status, default: 0, null: false
      t.integer :price

      t.timestamps
    end
  end
end
