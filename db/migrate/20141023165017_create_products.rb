class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_id
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
