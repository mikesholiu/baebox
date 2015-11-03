class LikesController < ApplicationController

respond_to :js, :html

  def like
    @user = current_user
    @product = Product.find(params[:product_id])
    @user.like!(@product)
  end

  def unlike
    @user = current_user
    @like = @user.likes.find_by_product_id(params[:product_id])
    @product = Product.find(params[:product_id])
    @like.destroy!
  end

end

