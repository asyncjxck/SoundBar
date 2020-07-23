class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
     params.require(:user).permit(:name, :email, :password_digest, :password_confirmation)
  end
end
