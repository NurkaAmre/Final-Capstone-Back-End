class User < ApplicationRecord
  # Associations
  has_many :reservations
  has_many :books, through: :reservations
end