
# puts "Guess an integer between '0 - 4'"
# answer = "#{rand(5)}"
# loop do
#   guess = "#{gets.chomp}"
#   if guess == answer
#     puts "Yay! You get to drink beer!"
#     break
#   else
#     puts "Oof, you had a 20% chance and you couldn't send. Tough life."
#   end
# end

# puts "You're going to guess an iteger between 0 and x. x can be anything be anything you want between 1 and 69. What does your heart tell you?'"
# range = gets.chomp
# answer = rand(range.to_i)
# puts "Now make a guess!"
# loop do
#   guess = gets.chomp
#   if guess.to_i == answer
#     puts "Yay! You get to drink beer!"
#     break
#   else
#     puts "Maybe you should have made 'x' lower?."
#   end
# end

# puts "You're going to guess an iteger between 0 and x. x can be anything be anything you want between 1 and 69. What does your heart tell you?'"
# range = gets.chomp
# answer = rand(range.to_i)
# puts "Now make a guess!"
# loop do
#   guess = gets.chomp
#   if guess.to_i == answer
#     puts "Yay! You get to go buy us croissants!"
#     break
#   elsif guess.to_i > answer
#     puts "Too much maryjane."
#   else
#     puts "From the windooooooow, to the wall!"
#   end
# end

# answer = [:"c", :"h", :"d"].sample.to_s + [:"c", :"h", :"d"].sample.to_s

# answer = (0..3).map { ('a'..'d').to_a[rand(4)] }.join
random = ["r", "b", "y", "g"].shuffle.join
puts "Guess a 4 character string of letters with r,g,y,b"
loop do 
  guess = gets.chomp
