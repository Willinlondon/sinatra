require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    "Hello world"
end

get '/secret' do
    "Don't tell anyone, otherwise I will hunt you down"
end

get '/nuclear-launch-codes' do
    "1234"
end

get '/random-cat' do
    @cat_name = ["Ali", "Will", "Ruby"].sample
    erb :index
end

get '/named-cat' do
    p params
    @cat_name = params[:cat_name]
    erb :index
end