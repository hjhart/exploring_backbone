require 'rubygems'
require 'bundler/setup'
require 'sinatra'

begin
  require_relative 'app.rb'
rescue NameError, LoadError
  require "#{File.dirname(__FILE__)}/app.rb"
end

run Sinatra::Application
