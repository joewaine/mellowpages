class BooksController < ApplicationController
  include ApplicationHelper
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
  def comment
    @comment = Comment.new
  end
  def comment
    Comment.create(params[:comment])
    @comments = Comment.order(:title)
    respond_to do |format|
      format.html { redirect_to(book_path) }
      format.js
    end
  end

  def show
    @book = Book.find(params[:id])
  @comment = Comment.new( :book => @book )
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

  def hold
    book = Book.find(params[:id])
    @auth.checkouts.create(:is_held => true, :book_id => book.id)
    redirect_to(books_path)
  end

  def return
    book = Book.find(params[:id])
    #if @auth is an admin, set the book is_checked_out to false and set its user to nil
    #if @auth is a logged-in user AND they are the book's user. set the book checked_out to false and its user to nil
    if is_admin? || (@auth.present? && book.user.present? && (@auth == book.user))
      # currentcheckout = book.checkouts.where(:is_returned => false).first
      returned_checkout = book.checkouts.where(:is_returned => false).first
      returned_checkout.is_returned = true
      returned_checkout.save
      book.is_checked_out = false
      # currentcheckout.is_returned = true
      # book.user = nil - and something to indicate that the current checkout is complete.
      book.save
      # currentcheckout.save

      current_checkout = book.checkouts.where(:is_held => true).first
      if current_checkout
        current_checkout.is_held = false
        current_checkout.is_returned = false
        nextuser = current_checkout.user
        Notifications.return_message(nextuser).deliver
      end
# Notifications.return_message(nextuser).deliver
      redirect_to(books_path)
    end
  end

  # def return
  #   book = Book.find(params[:id])
  #   if book.is_checked_out == true
  #     book.is_checked_out = false
  #     book.save
  #   end
  #   # @auth.books(book.id).destroy
  #   redirect_to(books_path)
  # end
  def import
    Book.import(params[:file])
    redirect_to root_url, notice: "Books Imported!"
  end
end
