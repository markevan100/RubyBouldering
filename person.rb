class Person

array = Array.new

  attr_reader :first_name, :last_name, :birth_year

  def initialize(first_name, last_name, birth_year)
    @first_name = first_name
    @last_name = last_name
    @birth_year = birth_year
    array << birth_year
  end

  def f_name
    puts "This person is named #{first_name}!"
  end

  def l_name
    puts "Their last name is #{last_name}."
  end

  def b_year
    puts "#{first_name} was born in #{birth_year}."
  end

  def current_age
    puts "#{first_name} is #{Time.now.year - birth_year} years old."
  end

  def how_old(new_year)
    if new_year > birth_year
    puts "#{first_name} will be #{new_year - birth_year} years old in #{new_year}."
  elsif new_year < birth_year
    puts "#{first_name} will be not be born for #{birth_year - new_year} more years."
  else
    puts "That's the year #{first_name} #{last_name} was born."
  end
  end

def which_older(other)
  if birth_year < other.birth_year
    puts "#{first_name} is older."
  elsif birth_year == other.birth_year
    puts "They are the same age."
  else
    puts "#{other.first_name} is older."
  end
end

def oldest
  puts array.min
end

end
