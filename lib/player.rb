class Player
  attr_reader :name, :hit_points
  STARTING_POINTS = 50

  def initialize(name)
    @name = name
    @hit_points  = STARTING_POINTS
  end

  def attack
    @hit_points -= 10
    "#{@name} was attacked!<br>Current hit points: #{@hit_points}"
  end
end
