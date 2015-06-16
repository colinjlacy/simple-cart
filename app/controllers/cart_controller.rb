class CartController < ApplicationController
	before_action :get_cart

	def show
		@cart_items = Product.find @cart
	end

	def add
		@cart.push params[:id]
		set_session
	end

	def remove
		@cart.delete params[:id]
		set_session
	end

	def clear
		@cart = []
		set_session
	end

	private

	def get_cart
		@cart = session[:cart] || []
	end

	def set_session
		session[:cart] = @cart
		redirect_to :show
	end
end
