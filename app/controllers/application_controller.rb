class ApplicationController < ActionController::Base

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def loggedIn?
        !!current_user
    end

    def require_user
        flash[:negative] = "You Must Be Logged In"
        if !loggedIn?
            redirect_to login_path
        end
    end
    
end
