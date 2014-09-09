class RocksController < ApplicationController

	def new
		@throws = get_throws
	end

	def show
		@throws = get_throws
		@game_throw = @throws[rand(3).to_i]
		@user_throw = @throws[params[:id].to_i]
		@result = game_result(@game_throw, @user_throw)
	end

	private

	def get_throws
		['rock','paper','scissors']
	end

	def game_result(game_throw, user_throw)
		beats = {
			"rock" => "scissors",
			"scissors" => "paper",
			"paper" => "rock"

		}
	if beats[user_throw] == game_throw
	@status = :win
	elsif user_throw == game_throw
	@status = :tie
	else
	@status = :loss
	end
end
end