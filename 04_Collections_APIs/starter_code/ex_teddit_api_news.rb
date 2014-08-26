# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!
require 'rest-client'
require 'json'

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
<<<<<<< HEAD

def get_input
gets.strip #chomp was also used..
end
 
def show_message message
puts message
end
 
def show_new_story_nofitication story
# story will be a hash (look at format below)
puts "NEW STORY!! title: #{story[:title]}, with #{story[:upvotes]}. [category: #{story[:category]}]"
end
 
def calculate_upvotes story
story[:upvotes] = 1
if story[:title].downcase.include?('cat')
story[:upvotes] *= 5
elsif story[:title].downcase.include?('bacon')
story[:upvotes] *= 8
end
 
story[:upvotes] *= 3 if story[:category].downcase == "food"
 
end



 
def get_from_digg
response = JSON.load( RestClient.get('http://digg.com/api/news/popular.json') )
 
response['data']['feed'].map do |child|
story = {
title: child['content']['title'],
category: child['content']['tags'].first['name']
}
 
calculate_upvotes story
show_new_story_nofitication story
end
end

get_from_digg

# def get_from_reddit
# response = JSON.load( RestClient.get('http://www.reddit.com/.json') )
 
# response['data']['children'].map do |child|
# story = {
# title: child['data']['title'],
# category: child['data']['subreddit']
# }
 
# calculate_upvotes story
# show_new_story_nofitication story
# end
# end



# def get_from_mashable
# response = JSON.load( RestClient.get("http://mashable.com/stories.json"))
# 	response['new'].map do |child|
# 	story = { 
# 		title: child['title'],
# 		category: child['channel']
# 	}
# 	calculate_upvotes story
# 	show_new_story_nofitication story

# 	end 


# end
=======
require 'rest-client'
require 'json'

# response = RestClient.get('http://www.reddit.com/.json')
# json_response = JSON.load(response)
# data = json_response['data']



def get_input
  gets.strip #chomp was also used..
end

def show_message message
  puts message
end

def show_new_story_nofitication story
  # story will be a hash (look at format below)
  puts "NEW STORY!! title: #{story[:title]}, with #{story[:upvotes]}. [category: #{story[:category]}]"
end

def calculate_upvotes story
  story[:upvotes] = 1
  if story[:title].downcase.include?('cat')
    story[:upvotes] *= 5
  elsif story[:title].downcase.include?('bacon')
    story[:upvotes] *= 8
  end

  story[:upvotes] *= 3 if story[:category].downcase == "food"

end


def get_from_reddit
  response = JSON.load( RestClient.get('http://www.reddit.com/r/bitcoin/.json') )

  response['data']['children'].map do |child|
     story = {
        title:  child['data']['title'],
        category: child['data']['subreddit']
      }

     calculate_upvotes story
     show_new_story_nofitication story
  end
end

def get_from_mashable # use http://mashable.com/stories.json
  response = JSON.load( RestClient.get(' http://mashable.com/stories.json') )
  response['hot'].map do |entry|
    story = {
        title:  entry['title'],
        category: entry['channel']
      }
    calculate_upvotes story
    show_new_story_nofitication story
  end
end

def get_from_digg # use http://digg.com/api/news/popular.json

end

get_from_mashable







>>>>>>> debeaba7d225dcc9ea4b2ad4c9b82ade0b1312f8
