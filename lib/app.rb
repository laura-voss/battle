require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "secret"
end

get '/info' do
  "special stuff"
end

get '/more' do
  "more more more"
end