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

get '/cat' do
  #Their way:

  "<div style='border: 10px dashed red'>
    <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"

  #Our way:

  # "<style>
  #   img {border: 10px dashed red}
  # </style>
  # <div>
  #   <img src='https://i.imgur.com/jFaSxym.png'>
  # </div>"

  #A bit of both:

  # "<div>
  #   <img style='border: 10px dashed red' src='https://i.imgur.com/jFaSxym.png'>
  # </div>"
end
