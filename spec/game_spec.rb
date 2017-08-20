require 'game'

describe Game do

  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1 }
    allow(player1).to receive(:name) { 'waterbottle' }
    player1

  describe '#creating_game' do
    it 'A new instance of game can be created (subject can be instantiated)' do
      Game.create_game(player1)
      expect(Game.instance_of_game).to be_an_instance_of(Game)
    end
  end

  describe 'Attributes' do
    it 'Recieves a name attribute' do
      expect(game.player).to eq player1
    end
  end

end
