class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  private
  def authenticate
    @auth = User.find(session[:user_id]) if session[:user_id].present?
  end
  def check_if_user
    redirect_to(root_path) if @auth.nil? || @auth.is_admin
  end
  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin
  end
end
