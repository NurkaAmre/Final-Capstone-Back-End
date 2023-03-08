class User < ApplicationRecord
  # validation
  validates :user_name, length: { in: 5..30 }
  # Associations
  has_many :reservations
  has_many :books, through: :reservations
end