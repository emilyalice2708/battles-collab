require 'sinatra/base'

class Battle < Sinatra::Base

get '/' do
  erb(:index)
end

post '/names' do
  @Player1_name = params[:Player1_name]
  @Player2_name = params[:Player2_name]
  erb(:play)
end

end
