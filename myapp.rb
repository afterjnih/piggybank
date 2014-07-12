require 'sinatra'
require 'sinatra/reloader'
load 'show.rb'

get '/' do
  'Hello World!'
end

get '/about' do
  sim = ShowInputMenu.new()
  sim.show
 # 'About This Site3'
end