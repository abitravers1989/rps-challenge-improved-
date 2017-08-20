
class Computerplayer

CHOICE = ["Rock", "Paper", "Scissors"]

  attr_accessor :choice

  def initialize
    @choice = choice
  end

  def computer_choice
     @choice.sample
  end

  # def self.create_game
  #   @game = Game.new(player)
  # end
  #
  # def self.instance_of_game
  #   @game
  # end

end
