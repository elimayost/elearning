class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def logged_in?
    unless session[:current_user]
      redirect_to(signin_path, :notice => 'Please sign in first')
    end
  end

end

