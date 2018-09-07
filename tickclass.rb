require 'pry'
class Climbs

@@climbs_all = {}
@@all = []

  attr_reader :name, :grade, :stars

  def initialize(name, grade, stars)
    @@climbs_all[name] = grade
    @@all << self
    @name = name
    @grade = grade
    @stars = stars
  end

  def self.all
    return @@all
  end

  def name
    name
  end

  def grade
    grade
  end

  def stars
    stars
  end

  def info
    return "#{@name} is a #{@stars} star #{@grade}."
  end

end
