class SessionsController < ApplicationController

  def new

  end

  def create
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      log_in!(@user)
      redirect_to users_path
      else
    end
  end

end
