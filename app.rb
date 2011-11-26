require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'coffee-script'

get '/' do
  erb :index
end

# this below will convert anything directly in the coffeescript directly
get '/assets/:file.js' do
  coffee params[:file].to_sym, :views => "coffeescript"
end
