require 'sinatra/base'
require './lib/player.rb'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:P1_name])
    player_2 = Player.new(params[:P2_name])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/fight' do
    @game = $game
    @game.attack(@game.player_2)
    erb :fight
  end

  run! if app_file == $0
end
