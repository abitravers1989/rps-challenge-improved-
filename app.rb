
require 'sinatra/base'
require 'rack'
require_relative './lib/game'
require './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/choice' do
     @game = Game.create_game(Player.new(params[:player_1]))
     @game = Game.instance_of_game
     erb :choice
  end


  # get 'choice1' do
  #   print "hey #{@name}"
  # end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
