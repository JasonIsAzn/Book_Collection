class BooksController < ApplicationController
  before_action :current_book, only: [:show, :edit, :update, :destroy, :delete]
  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create(book_params)

    redirect_to books_path
  end

  def edit
    
  end

  def update 
    @book.update (book_params)
  
    redirect_to book_path(@book), notice: "Your book has been updated."
  end

  def delete
    
  end

  def destroy
    @book.destroy

    redirect_to books_path
  end


  private
  def book_params
    params.require(:book).permit(:title, :author, :price, :published_date)
  end

  def current_book
    @book = Book.find(params[:id])
  end
end
