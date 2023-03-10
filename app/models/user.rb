class User < ApplicationRecord
  validates :user_name, presence: true
  # Associations
  has_many :reservations
  has_many :books, through: :reservations
end
