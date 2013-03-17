class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create]
  before_filter :check_if_admin, :only => [:index, :destroy]

  def index
    @users = User.order(:email)
  end
  def new
    @user = User.new
  end
  def create
    User.create(params[:user])
    @users = User.order(:email)
# respond to depends on what kind of format is being sent
    respond_to do |format|
      format.html { redirect_to(users_path) }
      format.js
    end
  end
   def edit
    @user = @auth
    render :new
  end
  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      @users = User.all
    else
      render :new
    end
  end
    def show
    @user = User.find(params[:id])
  end
  def destroy
  user = User.find(params[:id])
  user.delete
  redirect_to(users_path)
  end
    private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end