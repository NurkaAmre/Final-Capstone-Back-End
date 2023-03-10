require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'Valid Book inputs' do
    it 'Title of the Book should be same as it is in the Book detail' do
      book = Book.create(title: 'Company of One', author: 'Paul Jarvis',
                         book_cover_image: './app/img/book3-remove.png', genre: 'novel', publisher: 'Mariner Books', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '9780241380222', price: 230)

      expect(book).to be_valid
    end
  end

  describe 'Book Title is not available' do
    it 'Title is blank' do
      book = Book.create(title: '', author: 'Paul Jarvis', book_cover_image: './app/img/book3-remove.png',
                         genre: 'novel', publisher: 'Mariner Books', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '9780241380222', price: 230)

      expect(book).not_to be_valid
    end

    it 'Author name is not available' do
      book = Book.create(title: 'Company of One', author: '', book_cover_image: './app/img/book3-remove.png',
                         genre: 'novel', publisher: 'Mariner Books', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '9780241380222', price: 230)

      expect(book).not_to be_valid
    end

    it 'Cover image is not present' do
      book = Book.create(title: 'Company of One', author: 'Paul Jarvis', book_cover_image: '', genre: 'novel',
                         publisher: 'Mariner Books', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '9780241380222', price: 230)

      expect(book).not_to be_valid
    end

    it 'Publisher of the book is not available' do
      book = Book.create(title: 'Company of One', author: 'Paul Jarvis',
                         book_cover_image: './app/img/book3-remove.png', genre: 'novel', publisher: '', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '9780241380222', price: 230)

      expect(book).not_to be_valid
    end

    it 'ISBN of the book is not available' do
      book = Book.create(title: 'Company of One', author: 'Paul Jarvis',
                         book_cover_image: './app/img/book3-remove.png', genre: 'novel', publisher: 'Mariner Books', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '', price: 230)

      expect(book).not_to be_valid
    end
  end
end
