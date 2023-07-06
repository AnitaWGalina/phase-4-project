class SessionsController < ApplicationController
    def new
      # Render the login form
    end
  
    def create
      user = User.find_by(email: params[:session][:email].downcase)
  
      if user && user.authenticate(params[:session][:password])
        # Successful authentication
        log_in(user)
        redirect_to root_path
      else
        # Invalid credentials
        flash.now[:error] = 'Invalid email/password combination'
        render 'new'
      end
    end
  
    def destroy
      log_out
      redirect_to root_path
    end
  end
  
class SomeController < ApplicationController
    before_action :require_login
  
    def some_action
      # Action code
    end
  
    private
  
    def require_login
      unless logged_in?
        flash[:error] = 'Please log in to access this page.'
        redirect_to login_path
      end
    end
  end
  
  