require 'game'

describe Game do
  subject(:game) { described_class.new(player1,player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }


  describe "Attack" do
    it "should decrease players health" do
      expect(player1).to receive(:take_damage)
      game.attack(player1)
    end
  end

  describe "Storing player attributes" do
    it "should store players as attributes" do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end

  end



end
