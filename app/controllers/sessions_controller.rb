class SessionsController < ApplicationController
  def new

  end

  def create
    if auth
      @user = User.find_by(twitter_uid: auth['uid'])
      if @user.nil?
        @user = User.create(username: auth)
      end
      login(@user)
      redirect_to users_path(@user)
    else
      @user = User.find_by(email: params[:email])
      if !@user
        @error = "Account not found"
        render :new
      elsif !@user.authenticate(params[:password_digest])
        @error = "Invalid Credentials, please try again"
        render :new
      elsif @user.authenticate(params[:password_digest])
        login(@user)
        redirect_to user_path(@user)
      end
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private
  def auth
    request.env['omniauth.auth']
  end
end