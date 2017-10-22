require 'game'

describe Game do

  let (:game) { Game.new("Paper") }

  describe '#initialize' do

    it 'A new game is instantiated with a players choice' do
      expect(game.player_choice).to eq "Paper"
    end
  end

  describe '#result' do
    it 'states that the Player won if they chose Paper' do
      expect(game.result).to eq "WON"
    end

    it 'states that the Player drew if they chose Rock' do
      game2 = Game.new("Rock")
      expect(game2.result).to eq "ARE Average! You neither won or lost ..."
    end

    it 'states that the Player drew if they chose Scissors' do
      game3 = Game.new("Scissors")
      expect(game3.result).to eq "MASSIVE LOOSER"
    end
  end

end
