class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  # validation
  validates :email, presence: true
  validates :password, presence: true
  # Associations
  has_many :reservations
  has_many :books, through: :reservations
end