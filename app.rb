require 'sinatra/base'
require 'rack'
require './lib/player.rb'
# require './lib/Computerplayer.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player_1])
    puts @player.name
    redirect to '/choice'
  end

  get '/choice' do
    erb :choice
  end



  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
