
class Computerplayer

CHOICE = ["Rock", "Paper", "Scissors"]

  attr_accessor :choice

  def initialize
    @choice = CHOICE
  end

  def computer_choice
     return @choice.sample
  end

end
