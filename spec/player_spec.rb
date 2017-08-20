require 'player'

describe Player do
  let(:player) { described_class.new('waterbottle') }

  describe 'Attributes' do
    it "Recieves a name attribute" do
      expect(player.name).to eq 'waterbottle'
    end
  end

end
