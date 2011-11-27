require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'coffee-script'

get '/' do
  erb :index
end

get '/spec' do
  erb :spec
end
