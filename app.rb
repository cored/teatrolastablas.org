# Load Sinatra
require 'rubygems'
require 'sinatra'

require 'erb'

# Sinatra settings
set :app_file, __FILE__
set :root, File.dirname(__FILE__)

get '/' do 
  "Hello World"
end

