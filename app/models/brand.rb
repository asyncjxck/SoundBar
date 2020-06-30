class Brand < ApplicationRecord
  has_many :instruments
  belongs_to :category
end
