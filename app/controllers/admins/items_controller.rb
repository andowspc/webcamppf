class Admins::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).reverse_order
  end

  def show
    @item = Item.find(params[:id])
    @post = Post.where(item_id:@item)
  end

  def new
    @item = Item.new(items_params)
  end

  def create

  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
     @item = Item.find(params[:id])
     @item.update(items_params)
     redirect_to admins_item_path(@item.id)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to admins_items_path
  end

  private

  def items_params
    params.require(:item).permit(:name, :description, :image)
  end


end

