class AddImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :emage, :string
  end
end
