class Game
  attr_reader :player1, :player2
  ATTACK_POINTS = 10

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.reduce_points(ATTACK_POINTS)
    "#{player.name} was attacked!<br>Current hit points: #{player.hit_points}"
  end

end
