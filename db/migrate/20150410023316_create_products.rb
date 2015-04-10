class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :model
      t.string :description
      t.boolean :jedi
      t.decimal :price
      t.integer :stock_quantity

      t.timestamps null: false
    end
  end
end
