class GenresController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end
  def new
    @genre = Genre.new
  end
  def create
    Genre.create(params[:genre])
    @genres = Genre.order(:name)
    respond_to do |format|
    format.html { redirect_to(titles_path) }
    format.js
    end
  end
  def show
    @genre = Genre.find(params[:id])
  end
  def edit
    @genre = Genre.find(params[:id])
    render :new
  end
  def update
    @genre = Genre.find(params[:id])
    if @genre.update_attributes(params[:genre])
      @genres = Genre.all
    else
      render :new
    end
  end
  def destroy
  genre = Genre.find(params[:id])
  genre.delete
  redirect_to(genres_path)
  end
end
