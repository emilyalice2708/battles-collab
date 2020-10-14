require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Hola"
end

get '/another' do
  "another route"
end

get '/random_cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  erb(:index)
end

get '/cat-form' do

end
