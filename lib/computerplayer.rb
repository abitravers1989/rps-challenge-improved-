
class Computerplayer

CHOICE = ["Rock", "Paper", "Scissors"]

  attr_accessor :choice

  def initialize
    @choice = choice
  end

  def self.create_comp
    @comp = Comp.new
  end

  def self.instance_of_comp
    @comp
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
