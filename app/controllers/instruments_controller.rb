class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end


  def find_instrument
  end
end
