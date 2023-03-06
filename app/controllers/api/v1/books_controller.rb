class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.new(book_params)
    if @book.valid?
      @book.save
      render json: { message: 'Book has been created successfully!' }, status: :created
    else 
      render json: { message: 'Book could not be created.' }, status: :not_acceptable
    end
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    if @book
      @book.destroy
      render json: { message: 'Book has been destroyed successfully!' }, status: :ok
    else 
      render json: { message: 'Book could not be created.' }, status: :not_found
    end
  end

private

 def book_params
    params.require(:book).permit(:title, :author, :book_cover_image, :genre, :publisher, :date_of_publication, :pages,
                                  :language, :isbn, :price)
  end
end

