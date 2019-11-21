class Player
  attr_reader :name, :hit_points
  STARTING_POINTS = 50

  def initialize(name)
    @name = name
    @hit_points  = STARTING_POINTS
  end

  def reduce_points(points)
    @hit_points -= points.to_i
  end

end
