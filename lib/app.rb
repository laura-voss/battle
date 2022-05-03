require 'sinatra'
require "sinatra/reloader" if development?

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
  #order is important... switch these around and it doesn't work
end
