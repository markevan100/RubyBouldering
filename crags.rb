class Climbs

  attr_reader :climb_name, :rating_1, :star_count

  def initialize(climb_name, rating_1, star_count)
    @climb_name = climb_name
    @rating_1 = rating_1
    @star_count = star_count
  end

  def name
    puts climb_name
  end

  def rating
    puts rating_1
  end

  def stars
    puts star_count
  end

end
