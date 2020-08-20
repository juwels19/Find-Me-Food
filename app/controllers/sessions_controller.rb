class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to find_food_url, notice: "Successfully logged in!"
    else
      flash.now[:alert] = "Email or password is invalid. Please try again."
      render "new"
    end
  end

  def destroy
    session.delete(:user_id)
    session[:user_id] = nil
    redirect_to login_url, notice: "Successfully logged out!"
  end
end
