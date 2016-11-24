class Game

  attr_reader :player_1, :player_2
  attr_accessor :victim, :attacker

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @victim = player_2
    @attacker = player_1

  end

  def attack(player)
    player.receive_dmg
    switch_turn
  end

  def switch_turn
    if self.victim == @player_1
      self.victim = @player_2
      self.attacker = @player_1
    else
      self.victim = @player_1
      self.attacker = @player_2
    end
  end

end
