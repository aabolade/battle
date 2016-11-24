class Player

  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def receive_dmg
    self.hp -= 10
  end

end
