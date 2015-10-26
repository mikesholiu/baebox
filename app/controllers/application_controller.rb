class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :require_user


  private

  # def require_user
  #   redirect_to root_path unless current_user
  # end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize_admin
    redirect_to root_path, :status => 401 unless current_user.admin
  end
  
end
