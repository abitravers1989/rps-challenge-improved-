require 'player'

describe Player do
  let(:player) { described_class.new('waterbottle') }

  describe '#initialize' do
    it "Player is initialized with a name attribute" do
      expect(player.name).to eq 'waterbottle'
    end
  end

end
