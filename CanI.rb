answer = "left"
answer_arr = answer.chars
guess = "lits"
guess_arr = guess.chars

def place (guess_a, answer_a)
  correctp = ""
  correctl = ""
answer_a.each_with_index do |letter, position|
    if answer_a[position] == guess_a[position]
      correctp << letter
    else
      correctp << "*"
    end
guess_a.each do |letter|
      if answer_a.include?(letter) 
        correctl << letter
      else
        nil
      end
  end
end
puts correctp
puts correctl
end

place(guess_arr, answer_arr)
