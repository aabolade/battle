require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @Player_1 = params[:P1_name]
    @Player_2 = params[:P2_name]
    erb :play
  end

  run! if app_file == $0
end
