# def green
#   puts "red"
# end
# def head(hair)
# irb(main):082:0> def yell_name(name)
# irb(main):083:1> puts name.upcase
# irb(main):084:1> end
# => nil
# irb(main):085:0> yell_name ("josh")
# JOSH
#
# def word(twerk)
#   puts "¡#{twerk.upcase}!"
# end
# def nombre(name)
#   if name == "mark"
#     print "Estoy en espana, estaba en londres"
#   else
#     print "No se donde estoy, pero quisiera estar en espana"
# end
# def nombre(name)
#   if name == mark
#   puts "No estoy en espana"
# end
# def nombre(val)
#    if val % 2 == 0
#       return "#{val} is even"
#    end
#
#    if val % 2 == 1
#       return "#{val} is odd"
#    end
# end


# nombre = gets.chomp
# puts "This is what I got from user:"
# puts "#{nombre}"
# if nombre == "mark"
#    puts "Espana"
# else
#    puts "No estoy en espana"
# end

# nombre = gets.chomp
# while nombre != "mark"
#   if nombre == "mark"
#      puts "Espana"
#   else
#      puts "No estoy en espana"
#   end
# end
# loop do
#   until name == "mark"
#     puts "Como te llamas"
#     name = gets.chomp
# end
# end
#
# loop do
#  puts "\nwhat's your name, man?"
#  name = gets.chomp
#  if name == "mark"
#    puts "nailed it. I'm out"
#    break
#  else puts "'#{name}' isn't what I'm looking for"
#  end
# end

# loop do
#   puts "¿Cómo se llamaba la chica del bar hoy?"
#   nombre = gets.chomp
#   if nombre == "Fátima"
#     puts "¡Claro! Bien."
#     break
#   else puts "No. No se llamaba #{nombre.capitalize}. Intenta otra vez."
#   end
# end
# number = "Mi array empezó con 7 elementos, ahora salen 6, luego 5."
# space = " "
# p_words = ["josh", "mark", "gloria"]
# puts p_words
# puts space
# p_words.delete_at(0)
# puts p_words
# puts space
# p_words.delete_at(0)
# puts p_words
# puts space
# p_words.delete_at(0)
# p_words.insert(0, 'pensar', 'poder', 'poner', 'pedir', 'pecar', 'pasar', 'parar')
# puts p_words[0]
# puts space
# puts p_words[-1]
# puts space
# puts number
# puts space
# p_words.delete_at(0)
# puts p_words
# puts space
# p_words.delete_at(-1)
# puts p_words
# puts space
# puts p_words[2]
# puts space
# puts "#{p_words.length - 1}"
space = " "
arr1 = [*0..4]
puts arr1
puts space
arr2 = [*0..89]
puts arr2.inject(0){|sum,x| sum + x }
