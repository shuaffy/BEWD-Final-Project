class RockPaperScissorsController < ApplicationController
  def new
    @throws = possible_throws
  end

  def show
    @possible_throws = possible_throws
    @game_throw = @possible_throws[rand(3).to_i]
    @user_throw = @possible_throws[params[:id].to_i]
    @result = game_result(@game_throw, @user_throw)
  end

  private

  def possible_throws
    ['rock', 'paper', 'scissors']
  end

  def game_result(game_throw, user_throw)
    beats = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
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