
def guessnumber
    print "Guess what number I'm thinking of:"
    number = gets.chomp!.to_i
end

def calculate x, y
    if x > y
        puts "the number you put is too big"
    elsif x < y
        puts "the number you put is too small"
    else
        puts "you are correct!"
    end
end

x = guessnumber
y = 4
calculate x, y