class Game

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @players = player1, player2
    @player1, @player2 = players
  end

  def attack
    player_defense.take_damage
  end

  def player_attack
    players.first
  end

  def player_defense
    players.last
  end

  def turn_switch
    players.reverse!
  end

  private
  attr_reader :players

end
