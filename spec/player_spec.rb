require 'player'

describe Player do
  subject(:player) { described_class.new("Pikachu") }

  it "should have a name" do
    expect(player.name).to eq "Pikachu"
  end

  it "should start with 100 HP" do
    expect(player.health).to eq 100
  end

  it "take damagea and decrease the HP by a random number between 5 and 15" do
    srand(55)
    expect{player.take_damage}.to change{player.health}.by -15
    expect{player.take_damage}.to change{player.health}.by -12
    expect{player.take_damage}.to change{player.health}.by -13
    expect{player.take_damage}.to change{player.health}.by -10
  end
end
