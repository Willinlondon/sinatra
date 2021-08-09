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

get '/cat' do
    erb(:index)
end