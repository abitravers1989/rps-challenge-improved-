
require 'sinatra/base'
require 'rack'
require_relative './lib/game'
require './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @name1 = Player.new(params['player_1'])
    $computer = Computerplayer.create_comp
    $game = Game.create_game(@name1, $computer)
    redirect to '/choice'
  end

  before do
    @game = Game.instance_of_game
    @comp = comp.instance_of_comp
  end

  get '/choice' do
     erb :choice
  end

  post "/choice" do
    $game
    @comp_decision = @comp.computer_choice
    session[:choice] = params['choice']
    @player_choice = session[:choice]
    redirect to '/inplay'
  end

  post '/inplay' do
    session[:choice] = params['choice']
    # @in_play = true
    redirect to '/choice'
  end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
