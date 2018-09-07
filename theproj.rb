class Climb

$climbs_all = {}
@@all = []

  attr_reader :name, :grade, :crag, :morning, :afternoon, :winter, :summer

  def initialize(name, grade, crag, stars)
    $climbs_all[name] = grade
    @@all << self
    @name = name
    @grade = grade
    @crag = crag
    @morning = morning
    @afternoon = afternoon
    @winter = winter
    @summer = summer
  end
end


hungry_wolf = Climb.new("Hungry Wolf", "11b", "Live Action", 4)

puts "What grade do you want to climb?"
the_grade = gets.chomp
puts "Is it winter?"
is_winter = gets.chomp
puts "Are you going in the morning?"
is_morning = gets.chomp

$climbs_all.each do |a, b, c, d, e, f, g|
  if b == the_grade && 
end
