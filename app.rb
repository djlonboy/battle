require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
class Battle < Sinatra::Base

enable :sessions
# set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new(
      Player.new(params[:player1]),
      Player.new(params[:player2])
    )
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player2attack' do
    session[:output] = session[:game].attack
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
