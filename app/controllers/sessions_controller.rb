class SessionsController < ApplicationController

  def new
    
  end

  def create
    session[:password] = params[:password]
    if
    session[:password] == "hT78dvT"
    flash[:notice] = "successfully logged in"
    redirect_to airlines_path
    else
		flash[:error] = "Password is incorrect, please try again"
		redirect_to(:controller => 'sessions', :action => 'new')
		end
  end
  
  def destroy
    reset_session
    flash[:notice] = "successfully logged out"
    redirect_to login_path
  end
  
end
