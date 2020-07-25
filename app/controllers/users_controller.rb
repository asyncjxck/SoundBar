class UsersController < ApplicationController
 def new
    @new_user = User.new
  end
  
  def create
    @new_user = User.create(user_params)
    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to user_path(@new_user)
    else
      render :new
    end
  end

  def show
    current_user
    @instruments = current_user.instruments.order(sort_column + ' ' + sort_direction)
  end

  private

  def user_params
     params.require(:user).permit(:name, :email, :password_digest, :password_confirmation)
  end
end
