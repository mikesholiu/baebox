class WelcomeController < ApplicationController
  def index
    #@recent = Instagram.user_recent_media("225240798", count: 20)
    @featured = Product.where(featured: true)
  end
  def omniauth_failure
    redirect_to root_path
  end
end






