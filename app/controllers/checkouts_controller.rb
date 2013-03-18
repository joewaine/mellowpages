class CheckoutsController < ApplicationController
  def index
    @auth.checkouts.uniq
  end
  def new

  end
  def create
  end
end