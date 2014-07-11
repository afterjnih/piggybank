require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello World!'
end

get '/about' do
  'About This Site3'
end