
class List

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Task

  attr_reader :description

  def initialize(description)
    @description = description
  end

end
