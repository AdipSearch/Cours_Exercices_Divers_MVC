class UsersController < ApplicationController
  
  def new
  	
  end


  def create

  	@user = User.create(user_params)
 	
    redirect_to show_path
  end

  def show
  	@users = User.all
  	
  end

private
  def user_params
    params.require(:user).permit(:email, :username, :bio)
  end

end
