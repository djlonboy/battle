class Game
  attr_reader :player1, :player2, :round
  ATTACK_POINTS = 10
  STARTING_POINTS = 50

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @round = { attacker: player1, opponent: player2 }
  end

  def attack
    @round[:opponent].reduce_points(ATTACK_POINTS)
    message = "#{@round[:opponent].name} was attacked!"
    switch_turn
    message
  end

  def switch_turn
    if @round[:attacker] == player1
      @round[:attacker] = player2
      @round[:opponent] = player1
    elsif @round[:attacker] == player2
      @round[:attacker] = player1
      @round[:opponent] = player2
    else
      raise "Player error: Unrecognised player"
    end
    @round[:attacker].name
  end

  def game_status
    if player1.hit_points <= 0
      return "Game_over!<br>#{player1.name} loses!"
    elsif player2.hit_points <= 0
      return "Game_over!<br>#{player2.name} loses!"
    end
    nil
  end

end
