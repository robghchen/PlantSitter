class ApplicationController < ActionController::Base
  before_action :setup_user_stuff

  def log_in!(user)
      session[:user_id] = user.id
  end

  def logged_in?
      !!session[:user_id]
  end

  def setup_user_stuff
    if session["user_id"]
      @logged_in_user = User.find(session["user_id"])
    end
  end

  private

    def authenticate
        redirect_to new_session_path unless logged_in?
    end



end
