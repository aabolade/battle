require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }


  describe "Attack" do
    it "should decrease players health" do
      expect(player1).to receive(:take_damage)
      game.attack(player1)
    end
  end
end
