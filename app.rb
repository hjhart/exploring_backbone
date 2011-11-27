require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/' do
  erb :index
end

get '/spec' do
  erb :spec
end
