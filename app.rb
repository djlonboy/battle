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
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    session[:game] = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    session[:player2points] = 1
    erb :play
  end

  post '/player2attack' do
    session[:output] = session[:game].attack(session[:game].player2)
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
