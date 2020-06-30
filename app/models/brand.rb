class Brand < ApplicationRecord
  has_many :instruments
  belongs_to :brand
end
