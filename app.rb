# Load Sinatra
require 'rubygems'
require 'sinatra'

require 'erb'

# Sinatra settings
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :public_folder, 'public'
set :views, 'views'

get '/' do 
  erb :index
end

get '/home' do 
  erb :home
end

