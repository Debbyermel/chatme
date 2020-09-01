class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome #{@user.username}, you have signup in successfully."
      redirect_to message_path
    else
      redirect_to signup_path, flash[:notice] =  @user.errors.messages
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end