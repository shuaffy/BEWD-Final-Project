
def welcome
	print "Guess the number: "
end


def guessnumber
	guessnumber = gets.chomp!.to_i
end

def mynumber x, y
	if x > y
	puts "WRONG!!!! TOO HIGH"
	elsif x < y
	puts "WRONG!!!! TOO LOW"
	else
	puts "YAY YOU ARE RIGHT WHAT A GENIUS"
	end
end



x = guessnumber
y = 8
mynumber x, y

print welcome
while guessnumber = gets.chomp!.to_i
	if guessnumber == 8
		break
	else
	print welcome
end
end