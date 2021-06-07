require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  'This is a secret page that you can only see'
end 

get '/cat' do
  @name = ['Sean', 'Mas'].sample
  erb(:index)
end
