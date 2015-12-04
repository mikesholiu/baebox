class SessionsController < ApplicationController
  
  def create
     user = User.from_omniauth(env["omniauth.auth"])
     session[:access_token] = env["omniauth.auth"].credentials.token
     if(user.uid == "1746672786")
        session[:user_id] = user.id
        redirect_to '/products'
     else 
      session[:user_id] = user.id
      redirect_to root_url
     end
  end

  def destroy
     session[:user_id] = nil
     redirect_to root_url
  end
end
