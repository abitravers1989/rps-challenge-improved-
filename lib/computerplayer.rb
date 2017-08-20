
class Computerplayer

CHOICE = ["Rock", "Paper", "Scissors"]

  attr_accessor :choice

  def initialize
    @choice = choice
  end

  def computer_choice
     @choice.sample
  end

end
