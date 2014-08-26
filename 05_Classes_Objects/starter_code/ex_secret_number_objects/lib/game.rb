class Game

def initialize (randomperson)
@randomperson = randomperson.awesomename
@secret_number = SecretNumber.secret_number
@guesses_left = 3
end

def show_rules
    puts " -------------------------"
    puts " Welcome #{@randomperson}"
    puts " Here are the rules:"
    puts " You must guess a number between 1 and 10"
    puts " You will only have three tries to get it right"
    puts
  end

  def start
    show_rules

    while @guesses_left > 0
      guess = ask_input
       
      if guess == @secret_number
        puts "YOU WON!"
        exit
      elsif guess > @secret_number
        @guesses_left -= 1
        try_again(@guesses_left, "lower")
      elsif guess < @secret_number
        @guesses_left -= 1
        try_again(@guesses_left, "higher")
      end
    end

    puts "Game over. It was #{@secret_number}."
  end

  def ask_input
    puts "What's your guess?"
    guess = gets.strip.to_i
  end

  def try_again(guesses_left, next_guess)
    puts "Sorry, that's not it..."
    puts "You have #{guesses_left} #{guesses_left > 1 ? 'guesses' : 'guess'} left." if guesses_left > 1
    puts "Guess #{next_guess}!" if guesses_left > 0
    puts
  end


end



# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

