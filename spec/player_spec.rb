require 'player'

describe Player do
  subject(:player) { described_class.new("Pikachu") }

  it "should have a name" do
    expect(player.name).to eq "Pikachu"
  end

  it "should start with 100 HP" do
    expect(player.health).to eq 100
  end

  describe "Attacking another player" do
    it "Attacking another player will decrease the HP by 10" do
      expect{player.attack(player)}.to change{player.health}.by -10
    end
  end
end
