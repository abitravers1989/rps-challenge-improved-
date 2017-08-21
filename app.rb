
require 'sinatra/base'
require 'rack'
require_relative './lib/game'
require './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
    @@game= Game.new(player1,player2)
    @@game.player1.do_a_go
  end

  post '/names' do
    name1 = Player.new(params['player_1'], DEFAULT)
    @computer = Computerplayer.create_comp
    @@game = Game.create_game(name1, @computer)
    redirect to '/choice'

  end

@@game.name1.choice


  before do
    @@game = Game.instance_of_game
    @comp = comp.instance_of_comp
  end

  get '/choice' do
     @player = @game.name
     erb :choice
  end

  post '/choicez' do
    session[:choice] = params['choice']

  end

#   post "/inplay" do
#     $game
#
#     session[:choice] = params['choice']
#     @player_choice = session[:choice]
#     redirect to '/inplay'
#   end
#
#
#   @comp_decision = @comp.computer_choice
#
#   post '/inplay' do
#     session[:choice] = params['choice']
#     # @in_play = true
#     redirect to '/choice'
#   end
#
#   run! if app_file == $0
#   # Only run the following code when this file is the main file being run
#   # instead of having been required or loaded by another file
# end
