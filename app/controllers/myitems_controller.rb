class MyitemsController < ApplicationController

  def new
    @items = Item.all
    @myitem = Myitem.new
  end

  def create
    @myitem = Myitem.new
    @myitem.customer_id = current_customer.id
    @myitem.item_id = params[:myitem][:item_id]
      if @myitem.save
        redirect_to customer_path(current_customer.id)
      else
        render :new
      end
  end

  def destroy
    @myitem.customer_id = current_customer.id
    @myitem.item_id = params[:myitem][:item_id]
    @myitem.destroy
    redirect_to items_path(current_customer.id)
  end



end
