def print_headline
	p "welcome to Teddit!"
end

def get_title
	p "enter a title!"
	title = gets.chomp!
end

def enter_upvotes
	p "enter upvotes!"
	upvotes = gets.chomp!
end

def show_story_line title, upvotes
	p "story: #{title}, Current upvotes: #{upvotes}"
end


print_headline

title = get_title
upvotes = enter_upvotes

show_story_line title, upvotes

#adding methods#




