class Player
  attr_reader :name, :hit_points

  def initialize(name, starting_points)
    @name = name
    @hit_points  = starting_points
  end

  def reduce_points(points)
    @hit_points -= points.to_i
  end

end
