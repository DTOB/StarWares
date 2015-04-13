class CustomerLoginController < ApplicationController
  before_action :set_customer, only: [:index, :create]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.find(params[:id])
    session[:current_customer_id] = @customer.id
    flash[:notice] = "You have been logged in"
    redirect_to root_url
    
  end

  def destroy
    @_current_customer = session[:current_customer_id] = nil
    flash[:notice] = "You have been logged out"
    redirect_to root_url
  end


  private

  def set_customer
    #@customer = Customer.find(params[:id])
  end

end
