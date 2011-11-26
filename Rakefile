require 'rubygems'
require 'bundler/setup'
require 'coffee-script'
require 'fileutils'

namespace :js do
  desc "compile coffee-scripts from ./coffeescript to ./assets (for a production environment)"
  task :compile do
    source = "#{File.dirname(__FILE__)}/coffeescript/"
    javascripts = "#{File.dirname(__FILE__)}/public/assets/"
    FileUtils.mkdir_p javascripts
    
    Dir.foreach(source) do |cf|
      unless cf == '.' || cf == '..' 
        js = CoffeeScript.compile File.read("#{source}#{cf}") 
        open "#{javascripts}#{cf.gsub('.coffee', '.js')}", 'w' do |f|
          f.puts js
        end 
      end 
    end
  end
end
