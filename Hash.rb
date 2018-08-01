spanish = { "hay" => "there is", "ciego" => "blind", "pena" => "sorrow", "dar" => "to give" }

  puts "Hay, ciego, pena, dar. For each word, recall in your mind the meaning and then input to check."
loop do
  guess = gets.chomp
  if spanish["#{guess.downcase}"]
    puts spanish["#{guess.downcase}"]
  else puts "Try again."
  end
end
