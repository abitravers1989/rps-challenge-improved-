class Game

  attr_reader :name

  def initialise
    @name
  end

  def self.create_game
    @game = Game.new
    p "#{@game}"
  end

  def self.instance_of_game
    @game
    p "#{@game}"
  end

end

#
# game = Game.new
# p game2 = Game.create_game
# Game.new.instance_of?("hey")
