require 'rubygems'
require 'JSON'
require 'twitter'

class Twitterget
attr_accessor :query, :client, :search

def initialize
  @query = query
  @client = client
  @search = search
end

def find_tweet
  client = Twitter::REST::Client.new do |conf|
  conf.consumer_key = 'iXhhnn7eU3rfqXmMIchamtWt0'
  conf.consumer_secret = '3FUzrqmrgY7Ay42XCiycEZHlF7B2CW7F7pxrzio9Hqnv8Mf8ig'
end

puts 'What would you like to search for on Twitter? [or (e)xit]'
query = gets.chomp
puts '-----------Popular Tweets-----------'
client.search("#{query}", 
:result_type => 'popular', 
:lang => 'en').take(10).each do |tweet|

puts "#{tweet.text}"

if query == 'e'
exit

end
end
end
end