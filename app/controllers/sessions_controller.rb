class SessionsController < ApplicationController
  
  def create
     user = User.from_omniauth(env["omniauth.auth"])
     session[:user_id] = user.id
     if(user.id = "1746672786")
       redirect_to '/welcome/admin'
     else 
      redirect_to root_url
     end

  end

  def destroy
     session[:user_id] = nil
     redirect_to root_url
  end
end
