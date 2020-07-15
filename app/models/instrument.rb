class Instrument < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :user # creator
  has_many :reviews
  has_many :users, through: :reviews # reviewer
  has_and_belongs_to_many :cart
  
  validates_presence_of :name
  validates_presence_of :instrument_type
end
