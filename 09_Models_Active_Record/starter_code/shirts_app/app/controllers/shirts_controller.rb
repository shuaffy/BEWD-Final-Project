class ShirtsController < ApplicationController
	def index
		@shirts = Shirt.all
	end

	def new
		@shirt = Shirt.new
	end
	
end
