require 'sinatra/base'

class App < Sinatra::Base
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    @p1name = params[:p1name]
    @p2name = params[:p2name]

    erb :play

  end



  run! if app_file == $0
end
