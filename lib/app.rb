require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base
  set :sessions, true

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:p1name])
    player2 = Player.new(params[:p2name])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    erb :play
  end

  get '/attack' do
    @player1 = $game.player1
    @player2 = $game.player2
    $game.attack(@player2)
    erb :attack
  end



  run! if app_file == $0
end
