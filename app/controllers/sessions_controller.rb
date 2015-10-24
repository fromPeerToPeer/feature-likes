class SessionsController < ApplicationController
  def new
    redirect_to '/' if logged_in?
  end

  def create
    if user = User.find_by(email: params[:email])
      login_as(user.id)
    else
      render :new
    end
  end

  def destroy
    if logged_in?
      log_out
    end
    redirect_to '/'
  end
end
