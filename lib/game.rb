
require './lib/player.rb'
require './lib/computerplayer.rb'

class Game

  attr_accessor :player_choice

  def initialize(player_choice)
    @player_choice = player_choice
  end

end

  # def results
  #   pchoice = @player.capitalize
  #   cchoice = @computer.capitalize
  #   if (pchoice == 'Rock') && (cchoice == 'Rock')
  #     puts "Draw"
  #   elsif (pchoice == 'Rock') && (cchoice == 'Paper')
  #     puts "Player Won"
  #   elsif (pchoice == 'Rock') && (cchoice == 'Scissors')
  #     puts "Computer Won"
  #   elsif (pchoice == 'Paper') && (cchoice == 'Paper')
  #     puts "Draw"
  #   elsif (pchoice == 'Paper') && (cchoice == 'Scissors')
  #     puts "Computer Won"
  #   elsif (pchoice == 'Paper') && (cchoice == 'Rock')
  #     puts "Player Won"
  #   elsif (pchoice == 'Scissors') && (cchoice == 'Paper')
  #     puts "Player Won"
  #   elsif (pchoice == 'Scissors') && (cchoice == 'Scissors')
  #     puts "Draw"
  #   else (pchoice == 'Scissors') && (cchoice == 'Rock')
  #        puts "Computer Won"
  #   end
