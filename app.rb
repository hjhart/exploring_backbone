require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'coffee-script'

get '/' do
  erb :index
end

get '/application.js' do
  coffee :application
end
