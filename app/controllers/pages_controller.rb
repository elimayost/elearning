class PagesController < ApplicationController

  before_filter :logged_in?, :only => [:account]

  def home
  end

  def contact
  end

  def about
  end

  def faq
  end

	def account
		@codes = User.where("id = ?", session[:current_user].first.id).first.codes.not_expired
	end

	def shop
		@products = Product.all
	end

	def buy
		if session[:current_user]
			@code = Code.create(:user_id => session[:current_user].first.id,
											 		:product_id => params[:id],
											 		:expires_at => Time.now + 24.hours
											)
			redirect_to my_account_path
		else
		  flash[:login_error] = "Please login first"
      redirect_to signin_path
		end
	end

	def watch
	  @code = Code.where("id = ?", params[:id]).first
	  if Time.now < @code.expires_at + 1.hour
	    @product = Product.where("id = ?", @code.product.id).first
	  else
	    redirect_to my_account_path
	  end
	end


end

