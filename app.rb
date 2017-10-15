require 'sinatra/base'
require 'rack'
require './lib/player.rb'
# require './lib/Computerplayer.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:names] = params[:names]
    p session[:names]
  end

  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
