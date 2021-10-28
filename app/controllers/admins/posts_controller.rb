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
    @post = Post.find(params[:id])
  end

  def update
    @item = Item.find(params[:item_id])
		@post = Post.find(params[:id])
		@post.item_id = @item.id
	  if @post.update(post_params)
	    redirect_to admins_item_path(@item.id)
	  else
	    redirect_to new_admins_item_post_path
	  end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to admins_item_path(params[:item_id])
  end

  private

	def post_params
		params.require(:post).permit(:post, :title)
	end

end
