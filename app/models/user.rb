class User < ApplicationRecord
    has_many :registrations
    has_many :books, through: :registrations
    
    validates :user_name, length: { in: 5..30 }
end
