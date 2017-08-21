#should be called gameplay but for ease of past work is not.


require './lib/player.rb'
require './lib/Computerplayer.rb'
require './lib/gamelogic.rb'

class Game

  attr_accessor :player, :computer

   def initialize(player, computer)
     @player = player
     @computer = computer

   end

   def self.create_game(player, computer)
     @game = Game.new(player, computer)
   end

   def self.instance_of_game
     @game
   end

  # def play
  #   <% if @in_play %>
  #     The computer selected: <%= "#{@comp_decision}
  #
  #   <% if @choice == "Rock" &&  @comp_decision == "Paper" %>
  #      <h4> Player Lost </h4>
  #   <% elsif @choice == "Rock" &&  @comp_decision == "Scissor" %>
  #       <h4> Player Won </h4>
  #
  #  <% elsif @choice == @comp_decision %>
  #      <h4>
  #
  # end


end

#
# game = Game.new
# p game2 = Game.create_game
# Game.new.instance_of?("hey")
