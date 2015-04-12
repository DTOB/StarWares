class FixColName < ActiveRecord::Migration
  def change
    rename_column :products, :emage, :image
  end
end
