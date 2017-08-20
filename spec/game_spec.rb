require 'game'
require 'player'

describe Game do

  let(:player1) { double Player.new('waterbottle') }
  let(:game) { described_class.new(player1) }

   describe '#creating_game' do
     it 'A new instance of game can be created (subject can be instantiated)' do
      Game.create_game
      expect(game.instance_of_game(player1)).to be_an_instance_of(Game)
     end
   end

  describe 'Attributes' do
    it 'Recieves a name attribute' do
      expect(game.name).to eq player1
    end
  end
end
