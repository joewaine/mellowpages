class BooksController < ApplicationController
  def index
    @books = Book.order(:title)
  end
  def new
    @book = Book.new
  end
  def create
    Book.create(params[:book])
    @books = Book.order(:title)
    respond_to do |format|
    format.html { redirect_to(books_path) }
    format.js
    end
  end
  def show
    @book = Book.find(params[:id])
  end
  def edit
    @book = Book.find(params[:id])
    render :new
  end
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
      @books = Book.all
    else
      render :new
    end
  end
  def destroy
    book = Book.find(params[:id])
    book.delete
    redirect_to(books_path)
  end
  def checkout
    book = Book.find(params[:id])
    if book.is_checked_out == false
      book.is_checked_out = true
      book.save
    end
  @auth.books << book
    redirect_to(books_path)
  end
    def return
    book = Book.find(params[:id])
    if book.is_checked_out == true
      book.is_checked_out = false
      book.save
    end
  # @auth.books(book.id).destroy
    redirect_to(books_path)
  end
end
