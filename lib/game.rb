class Game

  attr_reader :name

  def initialise(player_1)
    @player_1 = player_1
  end

  def self.create_game
    @game = Game.new(player_1)
    p @game
  end

  def self.instance_of_game
    @game
    p @game
  end
end


# game = Game.new("name")
# p Game.create_game
# p game.instance_of_game
