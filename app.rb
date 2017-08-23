
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
    session[:names] = params[:names]
    redirect to '/choice'
  end

  get '/choice' do
     @player_name = session[:names]
     erb :choice
  end

  post '/choice' do
     session[:choice] = params[:choice]
     #why is this not being passed through to the page?
     @player_name = session[:names]
     #is this needed?the erb
     erb :choice
     redirect to '/result'
  end

  get '/result' do
    #why is this not being passed through to the page?
    @name = session[:names]
    @player_choice = session[:choice]
    @computer_choice = 
    @outcome =
    erb :result
  end




  run! if app_file == $0
  # Only run the following code when this file is the main file being run
  # instead of having been required or loaded by another file
end
