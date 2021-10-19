class ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).reverse_order
  end
  
  def show
    @item = Item.find(params[:id])
    @post = Post.where(item_id:@item)
    
  end
  
end