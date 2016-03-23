class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    redirect_to root_path unless @current_user
    @book = Book.new
  end

  def create
    redirect_to root_path unless @current_user
    @book = @current_user.books.create!(book_params)
    redirect_to books_path
  end

  def edit
    redirect_to root_path unless @current_user
    @book = Book.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path
  end

  def destroy
    redirect_to root_path unless @current_user
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :date_of_publication, :image_url, :description)
  end
end
