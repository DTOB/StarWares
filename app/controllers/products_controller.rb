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
    #@products = Product.search(params[:search])
    @products = Product.searchy(params[:search])
    @all = true
  end

  def jedi
    @products = Product.jedi(true)
    @all = true
    #@products = Product.jedi(params[:jedi])
    #@all = true
  end

  def search_jedis
    @products = Product.search_jedis(params[:search])
    @all = true
  end

  def sort_price_high_low
    @products = Product.all.order(price: :desc)
    @all = true
  end

  def sort_price_low_high
    @products = Product.all.order(:price)
    @all = true
  end

  def sort_model_a_z
    @products = Product.all.order(:model)
    @all = true
  end

  def sort_model_z_a
    @products = Product.all.order(model: :desc)
    @all = true
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
