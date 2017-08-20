require 'game'

describe Game do

  describe '#creating_game' do
    it 'A new instance of game can be created (subject can be instantiated)' do
      Game.create_game
      expect(Game.instance_of_game).to be_an_instance_of(Game)
    end
  end

  describe 'Attributes' do
    let(:game) { described_class.new('Player_1_name') }
    it 'Recieves a name attribute' do
      expect(game.name).to eq 'Player_1_name'
    end
  end

end
