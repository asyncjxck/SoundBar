class Instrument < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :user # creator
  has_many :reviews
  has_many :users, through: :reviews # reviewer
  validates_presence_of :model
  validates_presence_of :instrument_type
end
