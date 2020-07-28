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
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(params.require(:review).permit(:rating, :title, :content))
    redirect_to reviews_path
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path(current_user)
  end

  private
  def review_params
    params.require(:review).permit(:rating, :title, :content, :user_id, :instrument_id)
  end

end
