class SecretNumbersController < ApplicationController
	
	def new
	end

	def show
		@rand_number = rand(1..5).to_i
		@guessed_number = params[:id].to_i
		@is_correct = @guessed_number == @rand_number
	end

end