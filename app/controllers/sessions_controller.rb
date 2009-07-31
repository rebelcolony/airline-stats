class SessionsController < ApplicationController

  def new
    
  end

  def create
    session[:password] = params[:password]
    flash[:notice] = "successfully logged in"
    redirect_to airlines_path
  end
  
  def destroy
    reset_session
    flash[:notice] = "successfully logged out"
    redirect_to login_path
  end
  
end
