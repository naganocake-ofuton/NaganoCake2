class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :postage, default: 800
      t.integer :pay_amount
      t.integer :payment_method, default: 0
      t.string :name
      t.string :postcode
      t.string :address
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
