class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  private
    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
    
    def admin_user
      redirect_to(root_url) unless current_user.usertype == "admin"
    end
    
    def educator_user
      redirect_to(root_url) unless current_user.usertype == "educator" or current_user.usertype == "admin"
    end
    
    def manager_user
      redirect_to(root_url) unless current_user.usertype == "manager" or current_user.usertype == "admin"
    end
end
