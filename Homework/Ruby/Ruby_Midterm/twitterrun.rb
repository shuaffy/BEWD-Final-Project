require_relative 'twitterget.rb'

class Begin < Twitterget
def start
  puts 'What do you want? (s)earch for a popular twitter topic or (e)xit?'
  answer = gets.chomp.downcase
  while answer != 'e'
  if answer == 'e'
  puts 'Seeeee ya!'
  exit
  elsif answer == 's'
  find_tweet
  else	
  puts 'I cannot understand you. Try again and please only enter s or e'
  start
  end
end
end
end
run = Begin.new
run.start