class Book

  @hash = {}

  attr_reader :title, :pub_date

  def initialize(title, pub_date)
    @title = title
    @pub_date = pub_date
    binding.pry
    #This should be a hash takng title(key) and pub_date(value).
    #So far I've tried a bunch of things, including:
    #@hash = pub_date[:title]
    #@hash["#{title}"] = pub_date
    #Taking out the @'s.
    #I also found a resource that says I don't need brackets if a hash is the
    #argument in a method. So I tried taking those out. I tried adding something
    #else so that my hash isn't last, etc.
    #Tried prying it at a couple of different points. Is says my [] symbols
    #are to blame, but I can't figure out how to fix that.
    #Can't yet figure it out.
    

  end

  #def self.oldest
  #hash.sort_by { |key,value| value }
  puts @hash
  #end

end

burla = Book.new("Burlador", 1500)
vivaldi = Book.new("Whistling", 2000)
niebla = Book.new("Niebla", 1750)
