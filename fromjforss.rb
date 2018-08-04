require 'pry'
class Book

  @@book_years = {}

  attr_reader :title, :pub_date

  def initialize(title, pub_date)
    @title_and_key = Hash.new{}
    @title_and_key[title] = pub_date
    @@book_years[title] = pub_date
    @title = title
    @pub_date = pub_date
    # binding.pry
    # josh's response

  # don't know if this is what you're looking for. I'm not great with hashes
  # (they can be hard! really hard!)
  # I'm initiating a new empty hash, and then setting the key to `title` and the value to `pub_date`
  # I have no doubt this could be done in one line, but I couldn't quickly figure it out
  # lmk of this is what you're looking for.

  # If you're looking for a LARGE hash, with each key/value in line with each other
  # then we're back to class variables. I led you wrong yesterday with "YOU DON"T NEED DOUBLE @@ signs!"
  # super lame, huh?
  # I've added a class variable that's an empty hash, and each time I instantiate
  # an object of that class, I shove in the new key:value pair in the class variable.



    puts "title_and_key is: #{@title_and_key}"
    puts "@@book_years is: #{@@book_years}"
  end

  def self.oldest
  hammer = @@book_years.sort_by { |key,value| value }
puts hammer[0]
  end

end

burla = Book.new("Burlador", 1500)
vivaldi = Book.new("Whistling", 2000)
niebla = Book.new("Niebla", 1750)
