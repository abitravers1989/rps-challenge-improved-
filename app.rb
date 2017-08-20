
require 'sinatra/base'
require 'rack'
require_relative './lib/game'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance_of_game
  end

  post '/' do
    p params
    session[:name] = params[:name]
    @name = session[:name]
    @game = Game.create_game
    p "hey #{@game}"
  end

  # get 'choice1' do
  #   print "hey #{@name}"
  # end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
