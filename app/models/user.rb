class User < ApplicationRecord
  has_many :reviews
  has_many :instruments # created
  has_many :brands, through: :instruments
  has_many :categories, through: :instruments
  has_one :cart
  has_many :reviewed_instruments, through: :reviews, source: :instrument # reviewed
end
