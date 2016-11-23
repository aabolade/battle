require 'player'

describe Player do
  subject(:player) { described_class.new("Pikachu") }

  it "should have a name" do
    expect(player.name).to eq "Pikachu"
  end

  it "should start with 100 HP" do
    expect(player.health).to eq 100
  end
end
