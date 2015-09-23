class SessionsController < ApplicationController
  def create
     user = User.from_omniauth(env["omniauth.auth"])
     session[:user_id] = user.id
     redirect_to root_url, notice: "Signed In!"
  end

  def destroy
     User.find(session[:user_id]).destroy
     session[:user_id] = nil
     redirect_to root_url, notice: "Signed Out!"
  end
end
