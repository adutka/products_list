class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :filename

      t.boolean :is_processed, default: false

      t.timestamps null: false
    end
  end
end
