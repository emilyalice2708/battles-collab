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
