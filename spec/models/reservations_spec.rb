require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'Reservation should be invalid (missing user_id)' do
    Book.create(title: 'The Chronicles of Narnia', author: 'C.S.Lewis',
                book_cover_image: './app/img/book4-remove.png', genre: 'novel', publisher: 'Harper Collins', date_of_publication: '1950-03-03', pages: 768, language: 'english', isbn: '0007421672', price: 230)
    reservation = Reservation.create(book_id: 1, city: 'Kenya', date_of_booking: '2023-03-03',
                                     date_of_delivery: '2023-03-15')
    expect(reservation).to_not be_valid
  end

  it 'Reservation should be invalid (No book_id)' do
    Book.create(title: 'The Chronicles of Narnia', author: 'C.S.Lewis',
                book_cover_image: './app/img/book4-remove.png', genre: 'novel', publisher: 'Harper Collins', date_of_publication: '1950-03-03', pages: 768, language: 'english', isbn: '0007421672', price: 230)
    reservation = Reservation.create(user_id: 1, city: 'Kenya', date_of_booking: '2023-03-03',
                                     date_of_delivery: '2023-03-15')
    expect(reservation).to_not be_valid
  end

  it 'Reservation should be invalid (Blank city name)' do
    Book.create(title: 'The Chronicles of Narnia', author: 'C.S.Lewis',
                book_cover_image: './app/img/book4-remove.png', genre: 'novel', publisher: 'Harper Collins', date_of_publication: '1950-03-03', pages: 768, language: 'english', isbn: '0007421672', price: 230)
    reservation = Reservation.create(user_id: 1, book_id: 1, city: '', date_of_booking: '2023-03-03',
                                     date_of_delivery: '2023-03-15')
    expect(reservation).to_not be_valid
  end

  it 'Reservation should be invalid (No date_of_booking)' do
    Book.create(title: 'The Chronicles of Narnia', author: 'C.S.Lewis',
                book_cover_image: './app/img/book4-remove.png', genre: 'novel', publisher: 'Harper Collins', date_of_publication: '1950-03-03', pages: 768, language: 'english', isbn: '0007421672', price: 230)
    reservation = Reservation.create(user_id: 1, book_id: 1, city: 'Kenya', date_of_delivery: '2023-03-15')
    expect(reservation).to_not be_valid
  end

  it 'Reservation should be invalid (missing date_of_delivery)' do
    Book.create(title: 'The Chronicles of Narnia', author: 'C.S.Lewis',
                book_cover_image: './app/img/book4-remove.png', genre: 'novel', publisher: 'Harper Collins', date_of_publication: '1950-03-03', pages: 768, language: 'english', isbn: '0007421672', price: 230)
    reservation = Reservation.create(user_id: 1, book_id: 1, city: 'Kenya', date_of_booking: '2023-03-03')
    expect(reservation).to_not be_valid
  end
end
