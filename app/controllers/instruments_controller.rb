class InstrumentsController < ApplicationController
  before_action :require_login

  def index
    @instruments = Instrument.order(sort_column + ' ' + sort_direction)
  end

  def new
    @instrument = Instrument.new
    @brands = Brand.all
    if params[:brand_id] != nil
      @brand = Brand.find(params[:brand_id]).id
      @category = Category.find(Brand.find(@brand).category_id).id
    end
  end

  def create
    @instrument = current_user.instruments.create(instrument_params)
    @brands = Brand.all
    if params[:instrument][:brand_id] != ''
      @brand = Brand.find(params[:instrument][:brand_id])
      @instrument.category_id = @brand.category.id
    end
    if @instrument.save
      redirect_to brand_instruments_path(@brand)
    else
      render :new
    end
  end
    
  def edit
    @instrument = Instrument.find(params[:id])
    @brands = Brand.all
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(params.require(:instrument).permit(:name, :instrument_type, :description, :price, :brand_id))
    redirect_to instruments_show_path(@instrument)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to instruments_path
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
