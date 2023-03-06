class User < ApplicationRecord
  # include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  #  :jwt_authenticatable, jwt_revocation_strategy: self
  has_many :reservations
  has_many :books, through: :reservations
  has_secure_password

  validates :user_name, length: { in: 5..30 }
end
