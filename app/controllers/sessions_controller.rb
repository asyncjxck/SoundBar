class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])
    if !@user
      @error = "Account not found"
      render :new
    elsif !@user.authenticate(params[:password_digest])
      @error = "Invalid Credentials, please try again"
      render :new
    elsif @user.authenticate(params[:password_digest])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end
  
  def destroy
    session.clear
    redirect_to login_path
  end
end