class Reservation < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :book, class_name: 'Book'

  validates :city, presence: true
  validates :date_of_booking, presence: true
  validates :date_of_delivery, presence: true
end
