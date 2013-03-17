class AuthorsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]
  def index
    @authors = Author.order(:last_name)
  end
  def new
    @author = Author.new
  end
  def create
    Author.create(params[:author])
    @authors = Author.order(:last_name)
    respond_to do |format|
    format.html { redirect_to(authors_path) }
    format.js
    end
  end
  def show
    @author = Author.find(params[:id])
  end
  def edit
    @author = Author.find(params[:id])
    render :new
  end
  def update
    @author = Author.find(params[:id])
    if @author.update_attributes(params[:author])
      @authors = Author.all
    else
      render :new
    end
  end
  def destroy
    author = Author.find(params[:id])
    author.delete
    redirect_to(authors_path)
  end
end
