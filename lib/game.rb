
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

def result
  if (@player_choice == "Scissors")
    player_lost
  elsif (@player_choice == "Paper")
    player_win
  else
      player_drew
  end
end

end
