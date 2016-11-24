class Game

  attr_reader :player_1, :player_2
  attr_accessor :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end



  def attack(player)
    player.receive_dmg
    switch_turn
  end

  def switch_turn
    if self.current_player == @player_1
      self.current_player = @player_2
    else
      self.current_player = @player_1
    end
  end

end
