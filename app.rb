require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions
# set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    session[:player2points] = 1
    erb :play
  end

  post '/player2attack' do
    session[:player2attack] = true
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
