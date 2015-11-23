class WelcomeController < ApplicationController
  def index
    #@recent = Instagram.user_recent_media("225240798", count: 20)
    if params[:category].present?
      @featured = Product.where(featured: true, category: params[:category])
    else
      @featured = Product.where(featured: true)
    end
  end

  def omniauth_failure
    redirect_to root_path
  end

end

