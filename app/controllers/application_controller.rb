class ApplicationController < ActionController::Base
  helper_method :sort_column, :sort_reviews_column, :sort_direction, :current_user, :require_login, :logged_in?
  
  def sort_column
    Instrument.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def require_login
    @error = "You must be logged in to view this page."
    render '/sessions/new' unless logged_in?
  end

  def logged_in?
    !!current_user
  end

  def login(user)
    session[:user_id] = user.id
  end
end
