class User < ApplicationRecord
  has_many              :reviews
  has_many              :instruments # created
  has_many              :brands, through: :instruments
  has_many              :categories, through: :instruments
  has_many              :reviewed_instruments, through: :reviews, source: :instrument # reviewed
  has_one               :cart
  
  validates_presence_of :name 
  validates_presence_of :email
  has_secure_password
end
