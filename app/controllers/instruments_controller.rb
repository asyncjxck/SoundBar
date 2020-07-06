class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all.reverse
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.create(instrument_params)
    if @instrument.save
      redirect_to instruments_path(@instrument)
    else
      render :new
    end
  end

  private

  def instrument_params
    params.require(:instrument).permit(:model, :instrument_type, :description, :price, :category_id, :brand_id, :user_id)
  end
end
