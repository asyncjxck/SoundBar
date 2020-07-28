class ReviewsController < ApplicationController
  before_action :require_login
  def index
    @reviews = current_user.reviews
  end

  def new
    @review = Review.new
    @instrument = Instrument.find_by(id: params[:instrument_id])
  end

  def create
    @review = current_user.instruments.find_by(params[id: :instrument_id]).reviews.create(review_params)
    @instrument = current_user.instruments.find_by(params[id: :instrument_id])
    redirect_to instruments_show_path(@instrument)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:rating, :title, :content, :user_id, :instrument_id)
  end

end
