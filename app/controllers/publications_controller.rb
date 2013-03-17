class PublicationsController < ApplicationController
  def index
    @publications = Publication.order(:publication_title)
  end
  def new
    @publication = Publication.new
  end
  def create
    Publication.create(params[:publication])
    @publications = Publication.order(:publication_title)
    respond_to do |format|
    format.html { redirect_to(users_path) }
    format.js
  end
end
  def show
    @publication = Publication.find(params[:id])
  end
end