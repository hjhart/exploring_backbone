puts ENV['RACK_ENV']

require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'rack/coffee'

begin
  require_relative 'app.rb'
rescue NameError, LoadError
  require "#{File.dirname(__FILE__)}/app.rb"
end

if(ENV['RACK_ENV'] != 'production')
  puts "Non-production mode. Compiling from .coffee files."
  use Rack::Coffee, {
    :root => File.dirname(__FILE__),
    :urls => '/assets',
    :static => false
  }
else
  puts "Compiling javascript for production environment."
  puts `bundle exec rake js:compile`
end

run Sinatra::Application
