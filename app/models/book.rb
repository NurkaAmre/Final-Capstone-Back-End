class Book < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :title, presence: true
  validates :author, presence: true
  validates :book_cover_image, presence: true
  validates :genre, presence: true
  validates :publisher, presence: true
  validates :date_of_publication, presence: true
  validates :pages, presence: true
  validates :language, presence: true
  validates :isbn, presence: true
  validates :price, presence: true
end
