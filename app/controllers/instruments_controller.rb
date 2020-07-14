class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all.reverse
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
