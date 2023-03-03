class User < ApplicationRecord
  has_many :reservations
  has_many :books, through: :reservations

  validates :user_name, length: { in: 5..30 }
end
