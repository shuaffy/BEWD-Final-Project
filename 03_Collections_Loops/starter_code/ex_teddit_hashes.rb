# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb.
# This will be used to hold all stories we capture. (DONE)
# Users enter the story as they do now, but it gets put in a hash instead.
# Update any reference to the story (upvotes, category and title) <- These will be keys
# Your story hash should look like the one below:
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# (DONE)

# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# How do we add to an array?? push or <<
# (DONE except printing...)

# Using the stories array
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
#
#

# Teddit Contionals - Solution Code.

#  METHODS

def get_input
  gets.strip
end

def calculate_upvotes(story, category)
  upvotes = 1

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *= 8
  end

  if category.downcase == "food"
    upvotes *= 3
  end

  upvotes
end

# WORK
# Create an empty stories array.
stories = [] # or Array.new


puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
title = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(title, category)

#now that I have story, category and upvotes I can make the story hash
story = { title: title, category: category, upvotes: upvotes }
stories << story # adding the hash (story) to array (stories)

# we now have a story hash with keys and values reppin the key
puts "New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}"
