class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def logged_in?
    session[:logged_in_user].present?
  end

  def login_as(user_id)
    session[:logged_in_user] = user_id
    redirect_to '/'
  end

  def log_out
    reset_session
  end

  helper_method :logged_in?
end
