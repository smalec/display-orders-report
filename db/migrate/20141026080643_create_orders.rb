class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.integer :customer_id
      t.integer :order_id

      t.timestamps
    end
  end
end
