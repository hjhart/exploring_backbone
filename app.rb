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

# this below will compile any requested file in the coffeescript directory
# get '/assets/:file.js' do
  # coffee params[:file].to_sym, :views => "coffeescript"
# end

