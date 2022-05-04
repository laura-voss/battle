require 'sinatra'
require "sinatra/reloader" if development?

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end

get '/cat-form' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:cat_form)
end