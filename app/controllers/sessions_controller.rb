class SessionsController < ApplicationController
  before_action :redirect_message,only:[:new,:create]
  def new

  end
  
  def create
    user = User.find_by(username:params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged In Successfully"
      redirect_to root_path
    else
      flash.now[:negative] = "Invalid Credentials"
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] ="Logged Out Successfully"
    redirect_to login_path
  end

  private

  def redirect_message
    if loggedIn?
      flash[:negative] = "You Are Already Logged In"
      redirect_to root_path
    end
  end

end
