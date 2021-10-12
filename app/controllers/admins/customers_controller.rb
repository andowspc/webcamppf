class Admins::CustomersController < ApplicationController

  def index
    @customers = Customer.page(params[:page]).reverse_order
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
     @customer = Customer.find(params[:id])
     @customer.update(customer_params)
     redirect_to admins_customer_path(@customer.id)
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    redirect_to admins_customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:lastname, :firstname, :lastruby, :firstruby, :zip, :address, :tel, :email, :encrypted_password, :dm)
  end


end
