require 'game'

describe Game do

   describe '#initialize' do
     let (:game) { Game.new("Paper") }

     it 'A new game is instantiated with a players choice' do
       expect(game.player_choice).to eq "Paper"
     end
   end
end
