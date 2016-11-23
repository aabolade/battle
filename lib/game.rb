class Game

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1, @player2 = player1, player2
  end

  def attack(target)
    target.take_damage
  end
end
