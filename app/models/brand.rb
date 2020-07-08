class Brand < ApplicationRecord
  has_many :instruments
  has_many :reviews, through: :instruments
  belongs_to :category
  validates_presence_of :name

  def sort
    self.instruments.each do |instrument|
      instrument.model
      instrument.instrument_type
      instrument.description
      instrument.price
    end
  end
end
