class InstrumentsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @instruments = Instrument.order(sort_column + ' ' + sort_direction)
  end

  def new
    @instrument = Instrument.new
    if params[:brand_id] != nil
      @brand = Brand.find_by(id: params[:brand_id])
    end
  end

  def create
    @instrument = Instrument.create(instrument_params)
    if @instrument.save
      redirect_to brand_instruments_path(@instrument)
    else
      render :new
    end
  end

  def show
    if params[:id] == "new"
      @instrument = Instrument.new
      render 'new'
    else
      @instrument = Instrument.find(params[:id])
    end
  end


  private
  def instrument_params
    params.require(:instrument).permit(:instrument, :name, :instrument_type, :description, :price, :category_id, :brand_id, :user_id)
  end

  def sort_column
    Instrument.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
