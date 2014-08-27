# lib/game.rb
class Game
    attr_accessor :secret_number, :guesses, :exit_state
    @@total_games = 0 # class level. this will remain constant no matter what instance I am using

    def initialize
      @@total_games += 1
      @guesses = []
      @exit_state = false
    end

    def welcome # this could be made a class method but the way I use it below
      puts "Welcome to a confusing example of secret number! (Game: #{@@total_games})"
    end

    def get_guess
      print "Enter a guess between 1 and 10: "
      guess = gets.to_i
      if invalid_guess(guess)
        notify_invalid
        get_guess # this is a recursive function. fun!
      else
        @guesses << guess
        @guesses.last
      end
    end

    def invalid_guess(guess)
      guess < 1 || guess > 10
    end

    def notify_invalid
      puts "That guess does not count. But try a number between 1 and 10."
    end

    def generate_secret_number!
      @secret_number = SecretNumber.generate!
      # puts @secret_number # this is to test. adding extra puts statements is very useful in debugging!!!
    end

    def feedback_on_guess guess
      { # this is another way to do if-like statements. Not common and usually not recommended.
        -1 => 'Too Low!',
         1 => 'Too High!'
      }[guess <=> @secret_number] || 'Correct!' # the <=> is another way to do a comparison
    end

    def last_guess
      @guesses.length > (3 - 1) # figure this guy out.. remember that frequently you see .length - 1, in this case the reverse is true. Isn't 0 indexing fun!
    end

    def correct?
       @guesses.last == @secret_number
    end

    def check_exit
      last_guess || correct?  ? say_goodbye : false
    end

    def say_goodbye
      puts "Good Bye!" # not best practice to have a puts like this but alas.
      true # why am I returning true here?
    end

    def play
      welcome
      generate_secret_number!
      begin
        puts feedback_on_guess(get_guess)
      end until check_exit
    end

end

# lib/secret_number.rb
# this class is slightly unnecessary but a good example
class SecretNumber
  def self.generate!
    rand(1..10).to_i
  end
end

# main.rb
# here I am wrapping all my code in the runner in a function. this is how some other languages work by default but can be used in Ruby
def _main
  game = Game.new
  game.play
end


## Call the runner function
_main


##  Bonus:
#
# Adjust '_main' so that you can play again and again and again, until the users decides to exit.
#










