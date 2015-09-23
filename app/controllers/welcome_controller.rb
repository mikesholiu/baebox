class WelcomeController < ApplicationController
  def index
    @recent = Instagram.user_recent_media("25501780", count: 8)
  end
end
