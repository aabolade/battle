require 'player'

describe Player do

  let(:player) {described_class.new("Chris")}

  it 'should return the players name' do
    expect(player.name).to eq "Chris"
  end

  it "expects player to have HP value" do
    expect(player.hp).to eq 100
  end

  it 'expects hp to be reduced by 10' do
    expect {player.attack(player)}.to change {player.hp}.by(-10)
  end
end
