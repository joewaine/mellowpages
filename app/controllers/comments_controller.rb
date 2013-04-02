class CommentsController < ApplicationController
  include ApplicationHelper
  def new
    @comment = Comment.new
  end
  def create
    Comment.create(params[:comment])
    @Comments = Comment.order(:name)
    respond_to do |format|
      format.html { redirect_to(books_path) }
      format.js
    end
  end
  def new_comment
    @comment = Comment.new
  end
  def create_comment
    Comment.create(params[:comment])
    @comments = Comment.order(:title)
    respond_to do |format|
      format.html { redirect_to(book_path) }
      format.js
    end
  end
  def edit
    @comment = Comment.find(params[:id])
    render :new
  end
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      @comments = Comment.all
    else
      render :new
    end
  end
  def destroy
    comment = Comment.find(params[:id])
    comment.delete
    redirect_to(book_path)
  end

end
