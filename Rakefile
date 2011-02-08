require 'rubygems'
require 'bundler/setup'
require 'coffee-script'

desc "compile coffee-scripts from ./src to ./public/views"
task :coffee do
  source = "#{File.dirname(__FILE__)}/src/"
  javascripts = "#{File.dirname(__FILE__)}/public/javascripts/"
  
  Dir.foreach(source) do |cf|
    unless cf == '.' || cf == '..' 
      js = CoffeeScript.compile File.read("#{source}#{cf}") 
      open "#{javascripts}#{cf.gsub('.coffee', '.js')}", 'w' do |f|
        f.puts js
      end 
    end 
  end
end
