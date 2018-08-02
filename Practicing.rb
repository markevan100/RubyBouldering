answer = File.read('/usr/share/dict/words').lines.select {|l| (4..4).cover?(l.strip.size)}.sample.strip
answer_array = answer.chars
puts answer
loop do
puts "Please guess a four letter word."
guess = gets.chomp.downcase
guess_array = guess.chars

def right_place (the_guess, the_answer)
  correct_place = ""
  the_answer.each_with_index do |letter, position|
    binding.pry
    if the_answer[position] == the_guess[position]
      correct_place << letter
    else
      correct_place << "*"
    end
end
correct_place
end

def wrong_place (the_guess, the_answer)
  correct_letter = ""
  the_guess.each do |letter|
    if the_answer.include?(letter)
      correct_letter << letter
    end
end
correct_letter
end

puts right_place(guess_array, answer_array)
puts wrong_place(guess_array, answer_array)

break if guess_array == answer_array
end
