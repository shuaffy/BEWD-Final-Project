class SecretNumbersController < ApplicationController

  def new
  end

  def show
    @rand_number = rand(1..5).to_i
    #generate random number
    #
    # (rand(4) + 1).to_i
    # (1..5).shuffle.first
    # [1,2,3,4,5].sample

    @guessed_number = params[:id].to_i
    @is_correct = @guessed_number == @rand_number
  end

end