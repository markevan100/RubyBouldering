ans = File.read('/usr/share/dict/words').lines.select {|l| (4..4).cover?(l.strip.size)}.sample.strip
ans_array = ans.chars

loop do
puts "Please guess a four letter word."
guess = gets.chomp.downcase
guess_array = guess.chars

def check(arg1, arg2, i)
  if arg1[i] == arg2[i]
   print arg1[i]
 else
  print "-"
  end
end

print "'"
check(ans_array, guess_array, 0)
check(ans_array, guess_array, 1)
check(ans_array, guess_array, 2)
check(ans_array, guess_array, 3)

puts "' is/are in the right place."

print "'"
def check2(arg_guess, arg_ans)
  if arg_guess[0] != arg_ans[0] && arg_guess[0] == arg_ans[1]
   print arg_guess[0]
 elsif arg_guess[0] != arg_ans[0] && arg_guess[0] == arg_ans[2]
  print arg_guess[0]
elsif arg_guess[0] != arg_ans[0] && arg_guess[0] == arg_ans[3]
 print arg_guess[0]
 else
  nil
  end
  if arg_guess[1] != arg_ans[1] && arg_guess[1] == arg_ans[0]
   print arg_guess[1]
 elsif arg_guess[1] != arg_ans[1] && arg_guess[1] == arg_ans[2]
  print arg_guess[1]
elsif arg_guess[1] != arg_ans[1] && arg_guess[1] == arg_ans[3]
 print arg_guess[1]
 else
  nil
  end
  if arg_guess[2] != arg_ans[2] && arg_guess[2] == arg_ans[1]
   print arg_guess[2]
 elsif arg_guess[2] != arg_ans[2] && arg_guess[2] == arg_ans[0]
  print arg_guess[2]
elsif arg_guess[2] != arg_ans[2] && arg_guess[2] == arg_ans[3]
 print arg_guess[2]
 else
  nil
  end
  if arg_guess[3] != arg_ans[3] && arg_guess[3] == arg_ans[1]
   print arg_guess[3]
 elsif arg_guess[3] != arg_ans[3] && arg_guess[3] == arg_ans[2]
  print arg_guess[3]
elsif arg_guess[3] != arg_ans[3] && arg_guess[3] == arg_ans[0]
 print arg_guess[3]
 else
  nil
  end
end

check2(guess_array, ans_array)

puts "' is/are right, but in the wrong place."
break if guess_array == ans_array
end

puts "Congrats! You got it!"
