class HoldsController < ApplicationController
  def index
    @auth.holds.uniq
  end
  def new

  end
  def create
  end
end