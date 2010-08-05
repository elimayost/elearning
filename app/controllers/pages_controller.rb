class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def faq
  end

	def account
		@codes = User.where("id = ?", session[:current_user].first.id).first.codes
	end

	def shop
		@products = Product.all
	end

	def buy
		if session[:current_user]
			puts params[:id]
			puts session[:current_user].first.id
			@code = Code.create(:user_id => session[:current_user].first.id,
											 		:product_id => params[:id],
											 		:expires_at => Time.now + 24.hours
											)
			redirect_to root_path								
		else

		end								
	end

end
