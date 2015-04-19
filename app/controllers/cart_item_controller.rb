class CartItemsController < ApplicationController

  def cart_item_params
    params.require(:cart_item).permit(:owner_id, :owner_type, :quantity, :item_id, :item_type, :price)
  end
end
