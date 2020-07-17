class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_path(@user)
    else
      render :new
    end
    byebug
  end

  private

  def user_params
     params.require(:user).permit(:name, :email, :password_digest)
  end
end
