class ApplicationController < ActionController::Base
    # before_action :set_page_count
    before_action :authenticated
    helper_method :logged_in?
    
    private
  
    def current_user
      @current_user = User.find_by(id: session[:user_id])
    end
  
    def logged_in? 
      !current_user.nil?
    end
  
    # If not logged in, redirect to the login page. Otherwise, show them the page they want.
    def authenticated
      redirect_to login_path unless logged_in?
    end
  
    # def set_page_count
    #   session[:page_count] ||= 0
    # end
  
  end
  