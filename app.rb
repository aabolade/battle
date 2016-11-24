require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:P1_name] = params[:P1_name]
    session[:P2_name] = params[:P2_name]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:P1_name]
    @player_2 = session[:P2_name]
    erb :play
  end

  get '/fight' do
    erb :fight
  end

  run! if app_file == $0
end
