require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $p1 = Player.new(params[:P1_name])
    $p2 = Player.new(params[:P2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $p1
    @player_2 = $p2
    erb :play
  end

  get '/fight' do
    @player_1 = $p1
    @player_2 = $p2
    @player_1.attack(@player_2)
    erb :fight
  end

  run! if app_file == $0
end
