class UserPlantsController < ApplicationController
  def new
    @join = UserPlant.new
  end

  def create
    @join = UserPlant.create(user_plant_params)
    redirect_to user_path(session[:user_id])
  end



  private
  def user_plant_params
    params.require(:user_plant).permit(:user_id, :plant_id)
  end

end
