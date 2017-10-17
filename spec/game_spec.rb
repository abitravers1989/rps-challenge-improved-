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
       expect(game.result).to eq "Winner"
    end
end

end
