class Instrument < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :user
  has_many :reviews
  has_many :users, :through :reviews
end
