class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @user = User.new(username: params[:user][:username])
      @user.errors[:base] << "Useranem / password is invalid"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end