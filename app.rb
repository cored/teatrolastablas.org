# Load Sinatra
require 'rubygems'
require 'sinatra'

require 'erb'

# Sinatra settings
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :public_folder, 'public'
set :views, 'views'
set :images_folder, "#{settings.public_folder}/images"
set :slider_images_folder, "#{settings.images_folder}/slider"

helpers do 
  def partial(page, options ={})
    erb page, options.merge!(:layout => false)
  end
end

before do 
  @slider_images = []
  Dir.foreach(settings.slider_images_folder) do |file|
    @slider_images << file unless file == "." || file == ".."
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

