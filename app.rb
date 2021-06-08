require 'sinatra'
require "sinatra/reloader" if development? # only refresh when refreshed on web page

get '/' do # '/' == per web page, this one is home page.
  "Hello" # google.com/ is the home page
end

get '/secret' do
  'This is a secret page that you can only see'
end 

get '/random-cat' do
  @name = ['Sean', 'Mas'].sample
  erb(:index)
end

get '/named-cat' do
  p params # param == "query" passing info to the server
  @name = params[:name] # :name is hash KEY
  # params hash - allows you to use string on url
  # allowing to put the prameter into the URL
  erb :index
  # putting the name in the URL instead
  # @color = params[:color]
end

##if statement allows to pop name on if name is inputted