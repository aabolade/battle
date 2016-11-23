require 'sinatra/base'
require_relative 'player.rb'
require_relative 'game.rb'

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
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end



  run! if app_file == $0
end
