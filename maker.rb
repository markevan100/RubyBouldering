class Book

  @@hash = Hash.new
  attr_reader :title, :pub_date

  def initialize(title, pub_date)
    @title = title
    @pub_date = pub_date
    @@hash["#{title}"] = pub_date
  end
#This is a test comment
@@hammer = @@hash.sort_by { |key,value| value }

  def self.oldest
  puts @@hammer[0]
 end

end
