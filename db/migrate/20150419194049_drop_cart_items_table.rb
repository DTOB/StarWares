class DropCartItemsTable < ActiveRecord::Migration
  def change
    drop_table :cartitems
  end
end
