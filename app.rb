# Load Sinatra
require 'rubygems'
require 'sinatra'

require 'erb'

# Sinatra settings
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :public_folder, 'public'
set :views, 'views'

helpers do 
  def partial(page, options = {})
    erb page, options.merge!(:layout => false)
  end
end

get '/' do 
  erb :index
end

get '/projects' do 
  erb :projects
end

get '/support' do 
  erb :support
end

