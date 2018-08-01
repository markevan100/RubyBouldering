
  def ans(size = 4)
  charset = %w{ r y g b }
  (0...size).map{ charset.to_a[rand(charset.size)] }.join
end
ans_array = ans.chars

loop do
puts "Please guess a four letter string. The possible letters are r, y, g, b. They can repeate. Correct letters will print below your guess."
guess = gets.chomp.downcase

guess_array = guess.chars

  if guess_array[0] == ans_array[0]
    print guess_array[0]
  else
    print "-"
  end
  if guess_array[1] == ans_array[1]
    print guess_array[1]
  else
    print "-"
  end
  if guess_array[2] == ans_array[2]
    print guess_array[2]
  else
    print "-"
  end
  if guess_array[3] == ans_array[3]
    puts guess_array[3]
  else
    puts "-"
  end
break if guess_array == ans_array
end

puts "
You got it!"
