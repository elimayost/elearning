module ApplicationHelper

	def logged_in?
		true if session[:current_user]
	end

  def time_to_gmt time
    time + 1.hour
  end

end

