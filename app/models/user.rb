class User < ApplicationRecord
  # validation
  validates :user_name, length: { in: 5..30 }
  validates :email, presence: true
  validates :password, presence: true
  # Associations
  has_many :reservations
  has_many :books, through: :reservations
end