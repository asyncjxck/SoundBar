class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_secure_password

  has_many :reviews
  has_many :instruments # created
  has_many :brands, through: :instruments
  has_many :categories, through: :instruments
  has_many :reviewed_instruments, through: :reviews, source: :instrument # reviewed
  has_one  :cart
  
  validates_presence_of :username, :email, :password_digest, :password_confirmation
  validates_uniqueness_of :email
end
