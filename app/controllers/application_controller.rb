class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def authorize
    if !current_user
      flash[:alert] = "Please sign in (or up) to visit that page."
      redirect_to '/'
    end
  end

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def admin_authorize
    if !current_user || current_user.admin == false
      flash[:alert] = "Only administrators can visit that page."
      redirect_to '/'
    end
  end
end
