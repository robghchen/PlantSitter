class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:new, :create]

    def index
      @users = User.all
    end

    def show
        @join = UserPlant.new
    end

    def new
      @user = User.new
      @plants = Plant.all

    end

    def create

      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:error] = @user.errors.full_messages
        redirect_to new_user_path(@user)
      end
    end

    def edit
      @plants = Plant.all
      @join = UserPlant.new
    end

    def update
      byebug
      if @user.update(user_params)
        redirect_to @user
      else
        flash[:error] = @user.errors.full_messages
        redirect_to edit_user_path(@user)
      end
    end

    def destroy
      @user.destroy
      redirect_to users_path
    end

  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :zip, :phone, :email, :password, :username, :bio)
    end


  end
