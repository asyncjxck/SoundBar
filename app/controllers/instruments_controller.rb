class InstrumentsController < ApplicationController
  before_action :require_login

  def index
    @instruments = Instrument.order(sort_column + ' ' + sort_direction)
  end

  def new
    @instrument = Instrument.new
    @brands = Brand.all
    @categories = Category.all
    if params[:brand_id] != nil
      @brand = Brand.find(params[:brand_id]).id
      @category = Category.find(Brand.find(@brand).category_id).id
    end
  end

  def create
    @instrument = current_user.instruments.create(instrument_params)
    if params[:instrument][:brand_id] != ''
      @brand = Brand.find(params[:instrument][:brand_id])
    end
    if @instrument.save
      redirect_to brand_instruments_path(@brand)
    else
      render :new
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @reviews = @instrument.reviews
  end

  def string
    @instruments = Instrument.string
    render :index
  end

  def percussion
    @instruments = Instrument.percussion
    render :index
  end

  def keyboard
    @instruments = Instrument.keyboard
    render :index
  end


  private
  def instrument_params
    params.require(:instrument).permit(:instrument, :name, :instrument_type, :description, :price, :category_id, :brand_id, :user_id)
  end
end
