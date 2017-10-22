
class Game

  attr_accessor :player_choice

  def initialize(player_choice)
    @player_choice = player_choice
  end

  def self.create(player_choice)
    @game = Game.new(player_choice)
  end

  def self.instance
    @game
  end

  def player_win
    return "WON"
  end

  def player_drew
    return "ARE Average! You neither won or lost ..."
  end

  def player_lost
     return "MASSIVE LOOSER"
  end

  def win
    if @player_choice == "Paper"
    @game.player_win
  end
  end

  def lose
    if @player_choice == "Scissors"
       @game.player_lost
    end
  end

  def draw
    if @player_choice == "Rock"
  @game.player_drew
  end

end

def result
  @game.lose
  @game.win
  @game.draw
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
