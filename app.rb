require 'sinatra/base'
require 'rack'
require './lib/player.rb'
require './lib/game.rb'
# require './lib/Computerplayer.rb'

class MyApp < Sinatra::Base

  before do
    @player = Player.instance
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_name = params[:player_1]
    @player = Player.create(player_name)
    redirect to '/choice'
  end

  get '/choice' do
    erb :choice
  end

  post '/option' do
    player_choice = params[:choice]
    p player_choice
    @game = Game.create(player_choice)
    p @game
    p @game.result
    # p @game.player_choice
    redirect '/game_result'
    # @game_outcome = Game.create(player_choice, "Rock")
  end

  get '/game_result' do
    p @game.result
    erb :game_result
    # @game.player_choice
  end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
