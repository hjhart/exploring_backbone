::MAIN_RACK_APP = self
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'rack/coffee'

begin
  require_relative 'app.rb'
rescue NameError, LoadError
  require "#{File.dirname(__FILE__)}/app.rb"
end

map '/assets' do 
  use Rack::Coffee, {
      :root => File.dirname(__FILE__) + '/coffeescript',
      :urls => '/'
  }
  run lambda { |env| ::MAIN_RACK_APP.call(env) } 
end

map '/' do
  run Sinatra::Application
end
