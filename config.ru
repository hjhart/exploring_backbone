require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'rack/coffee'

begin
  require_relative 'app.rb'
rescue NameError, LoadError
  require "#{File.dirname(__FILE__)}/app.rb"
end

use Rack::Coffee, {
    :root => File.dirname(__FILE__),
    :urls => '/assets'
}

run Sinatra::Application
