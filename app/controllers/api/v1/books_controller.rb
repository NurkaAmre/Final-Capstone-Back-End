class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: %i[show destroy]
  before_action :set_user, only: %i[create destroy]
  
  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    @book.user = @user
    if @book.save
      render json: {
        status: { success: true, message: 'Book created successfully' },
      }
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @book.destroy
      render json: { success: true, message: 'Book deleted successfully' }, status: :ok
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def book_params
    params.require(:book).permit(:title, :author, :book_cover_image, :genre, :publisher, :date_of_publication, :pages,
                                 :language, :isbn, :price)
  end
end
