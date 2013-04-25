require 'sinatra/base'
require 'sinatra/reloader'
require 'coffee-script'
require 'sass'
require 'haml'

class SassEngine < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/../assets/sass'
  get '/stylesheets/:file.css' do
    sass params[:file].to_sym
  end
end

class CoffeeEngine < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/../assets/coffee'
  get '/javascripts/:file.js' do
    if File.exist? File.join("..", "assets","javascripts", "#{params[:file]}.js")
      content_type 'text/javascript'
      File.read File.join("..","assets","javascripts", "#{params[:file]}.js")
    else
      coffee params[:file].to_sym
    end
  end
end

class PlaygroundApp < Sinatra::Base
  register Sinatra::Reloader
  use SassEngine
  use CoffeeEngine

  set :views, File.dirname(__FILE__) + '/../views'
  set :public_dir, File.dirname(__FILE__) + '/../public'

  get '/' do
    haml :index
  end
end
