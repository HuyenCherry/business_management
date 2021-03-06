class Users::SessionsController < ApplicationController
  def index
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      log_in user
      render "index"
    else
      flash[:danger] = "Invalid email/password combination"
      render "index"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
