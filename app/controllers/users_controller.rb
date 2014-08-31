class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You Are Now Registered"
      redirect_to root_path
    else
      @user = User.new
      @user.valid?
      render :new
    end
  end






  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :bio, :frequency)
  end
end