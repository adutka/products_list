class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :sku
      t.string :name
      t.string :field1
      t.string :field2
      t.string :field3
      t.string :field4
      t.string :dimension
      t.decimal :price, precision: 15, scale: 5

      t.timestamps null: false
    end
  end
end
