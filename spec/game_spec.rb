require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'Expects attack to call receive_dmg method' do
    expect(player2).to receive (:receive_dmg)
    game.attack(player2)
  end

  it 'expects player_1 to eq player1' do
    expect(game.player_1).to eq player1
  end

  it 'expects player_2 to eq player2' do
    expect(game.player_2).to eq player2
  end


end
