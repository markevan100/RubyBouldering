require 'pry'
class Person

@@people_all = {}
@@all = []

  attr_reader :first_name, :last_name, :birth_year

  def initialize(first_name, last_name, birth_year)
    @@people_all[first_name] = birth_year
    @@all << self
    @first_name = first_name
    @last_name = last_name
    @birth_year = birth_year
  end

# hint: def self.all will let Person.all work
  def self.all
    return @@all
  end

  def f_name
    # puts "This person is named #{first_name}!"
    # all these methods will fail, because the "return value"
    # of a "puts" statement is nil. I'll do this first one for you:
    first_name
  end

  def l_name
    last_name
  end

  def b_year
    birth_year
  end

  def current_age
    puts "#{first_name} is #{Time.now.year - birth_year} years old."
  end

  def how_old(new_year)
   new_year - birth_year
  end

def which_older(other)
  if birth_year < other.birth_year
    return "#{first_name} is older."
  elsif birth_year == other.birth_year
     return "They are the same age."
  else
    return "#{other.first_name} is older."
  end
end

def self.oldest
  sorted_array = @@people_all.sort_by { |key, value| value }
  first_array = sorted_array[0]
  puts first_array[0]
end

def self.youngest
  sorted_array = @@people_all.sort_by { |key, value| value }.reverse
  first_array = sorted_array[0]
  return first_array[0]
end

end
