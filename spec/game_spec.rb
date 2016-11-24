require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'Expects attack to call receive_dmg method' do
    expect(player2).to receive (:receive_dmg)
    game.attack(player2)
  end


end
