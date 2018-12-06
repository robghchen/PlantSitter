class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      log_in!(@user)
      redirect_to user_path(@user)
    else
      flash[:alert] = "Incorrect username/password. You suck."
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end

end
