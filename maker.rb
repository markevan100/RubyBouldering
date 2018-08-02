class Book

  hash = {}
  attr_reader :title, :pub_date

  def initialize(title, pub_date)
    @title = title
    @pub_date = pub_date
    hash["#{title}"] = pub_date
  end

  def self.oldest
  hash.sort_by { |key,value| value }
  puts hash
  end

end
