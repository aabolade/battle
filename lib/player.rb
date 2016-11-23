class Player
  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def take_damage
    self.health -= rand(5..15)
  end

  private

  attr_writer :health
end
