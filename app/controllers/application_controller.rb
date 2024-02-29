class ApplicationController < ActionController::Base
    helper_method :current_user,:loggedIn?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def loggedIn?
        !!current_user
    end

    def require_user
        if !loggedIn?
            flash[:negative] = "You Must Be Logged In"
            redirect_to login_path
        end
    end
    
end
