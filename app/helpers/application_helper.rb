module ApplicationHelper

	def logged_in?
		true if session[:current_user]
	end

end
