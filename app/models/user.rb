class User < ApplicationRecord
  has_many :reviews
  has_many :instruments # created
  has_many :reviewed_instruments, :through :reviews, source: :instrument # reviewed
end
