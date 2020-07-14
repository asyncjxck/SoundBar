class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
    if @instruments_by_brand = Instrument.order('brand ASC')
      @instruments = @instruments_by_brand
    elsif @instruments_by_model = Instrument.order('model ASC')
      @instruments = @instruments_by_model
    elsif @instruments_by_instrument_type = Instrument.order('instrument_type ASC')
      @instruments = @instrumnets_by_instrument_type
    elsif @instruments_by_price = Instrument.order('price ASC')
      @instruments = @instruments_by_price
    end
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.create(instrument_params)
    # byebug
    if @instrument.save
      redirect_to instruments_path(@instrument)
    else
      render :new
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  private

  def instrument_params
    params.require(:instrument).permit(:instrument, :model, :instrument_type, :description, :price, :category_id, :brand_id, :user_id)
  end
end
