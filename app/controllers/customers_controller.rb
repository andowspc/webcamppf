class CustomersController < ApplicationController

  def show
    @profile = current_customer
    @myitems = current_customer.items

  end

  # def index
    # @user = current_user
    # @new = Book.new
    # @users = User.all
  # end

  # def show
    # @user = User.find(params[:id])
    # @new = Book.new
    # @books = @user.books
  # end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
     @customer = Customer.find(params[:id])
     @customer.update(customer_params)
     redirect_to customer_path(current_customer.id)
  end
  
   def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    redirect_to root_path
  end



  private

  def customer_params
    params.require(:customer).permit(:lastname, :firstname, :lastruby, :firstruby, :zip, :address, :tel, :email, :dm)
  end
end