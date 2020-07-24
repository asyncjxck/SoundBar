class ApplicationController < ActionController::Base
  helper_method :sort_column, :sort_direction, :current_user
  
  def sort_column
    Instrument.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def current_user
    @user = User.find(session[:user_id])
  end
end
