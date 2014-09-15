class ShirtsController < ApplicationController
	before_action :load_shirt, only: [ :edit, :update, :show, :destroy ]

	def index
		@shirts = Shirt.search_for(params[:q])
	end

	def show
	end

	def new
		@shirt = Shirt.new
	end
	
	def edit
	end

	def update
		@shirt.update safe_shirt_params
    redirect_to @shirt
	end

	def create
		@shirt = Shirt.create(safe_shirt_params)
		if @shirt.save
			#valid?
			redirect_to @shirt  #shirt_path(@shirt.id)
		else 
			render 'new'
		end
	end

  def destroy
    @shirt.delete
    redirect_to shirts_path
  end

private

	def safe_shirt_params
		params.require('shirt').permit(:name, :description, :image)
	end

	def load_shirt
		@shirt = Shirt.find(params[:id])
	end

end
