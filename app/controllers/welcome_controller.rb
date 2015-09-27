class WelcomeController < ApplicationController
  def index
    @recent = Instagram.user_recent_media("225240798", count: 20)
  end
end






