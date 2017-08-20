
require 'sinatra/base'
require 'rack'
require_relative './lib/game'
require './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:player_1] = params['player_1']
    @in_play = false
    redirect to '/choice'
  end

  get '/choice' do
     @player1 = session[:player_1]
     @computer = Computerplayer.new
     @comp_decision = @computer.computer_choice
     session[:choice] = params['choice']
     @player_choice = session[:choice]
     erb :choice
  end

  post '/inplay' do
    session[:choice] = params['choice']
    @in_play = true
    redirect to '/choice'
  end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
