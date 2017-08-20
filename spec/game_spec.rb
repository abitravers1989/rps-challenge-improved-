require 'game'

describe Game do

  #RSpec's subject is a special variable that refers to the object being tested.
  #Expectations can be set on it implicitly
  subject(:game) { described_class.new('Player_1_name') }

  describe 'Creating new game' do
    it 'A new instance of game can be created (subject can be instantiated)' do
      Game.create_game
      expect(Game.instance_of_game).to be_an_instance_of(Game)
    end
  end

  describe 'Attributes' do
    it 'Recieves a name attribute' do
      expect(game.name).to eq 'Player_1_name'
    end
  end

end
