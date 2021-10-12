class Admins::PostsController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
    @post = Post.new(item_id: @item.id)
    # ハッシュ
  end

  def create
    @item = Item.find(params[:item_id])
		@post = Post.new(post_params)
		@post.item_id = @item.id
	  if @post.save!
	    redirect_to admins_item_path(@item.id)
	  else
	    redirect_to new_admins_item_post_path
	  end
  end

  def edit
    @item = Item.find(params[:item_id])
    @post = Post.new(item_id: @item.id)
  end

  def update
    @item = Item.find(params[:item_id])
		@post = Post.new(post_params)
		@post.item_id = @item.id
	  if @post.save!
	    redirect_to admins_item_path(@item.id)
	  else
	    redirect_to new_admins_item_post_path
	  end
  end

  def destroy
    @item = Item.find(params[:item_id])
		@post.item_id = @item.id
    @item.destroy
    redirect_to admins_items_path
  end

  private

	def post_params
		params.require(:post).permit(:post, :title)
	end

end
