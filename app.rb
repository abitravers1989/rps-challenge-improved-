require 'sinatra/base'
require 'rack'
require './lib/player.rb'
# require './lib/Computerplayer.rb'

class MyApp < Sinatra::Base

  before do
    @player = Player.instance
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
    @game_outcome = Game.create(player_choice, )
  end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
