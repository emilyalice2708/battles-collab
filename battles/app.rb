require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:Index)
  end

  post '/names' do
    session[:Player1_name] = params[:Player1_name]
    session[:Player2_name] = params[:Player2_name]
    redirect '/play'
  end

  get '/play' do
    @Player1_name = session[:Player1_name]
    @Player2_name = session[:Player2_name]
    erb(:play)
  end

end
