class Brand < ApplicationRecord
  has_many              :instruments
  has_many              :reviews, through: :instruments
  belongs_to            :category
  
  validates_presence_of :name
end
