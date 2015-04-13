class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index

    @products = Product.all
    @all = true
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.search(params[:search])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:model, :description, :jedi, :price, :stock_quantity, :image)
  end
end
