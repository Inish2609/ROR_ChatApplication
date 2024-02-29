class UsersController < ApplicationController

    def new
        
    end

    def create
        @user = User.new(params.require(:user).permit(:username,:password))
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Account Created Successfully"
            redirect_to root_path
        else
            render 'new'
        end
    end

end
