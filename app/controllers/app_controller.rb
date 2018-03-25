
class AppController < Sinatra::Base

  # sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :view, Proc.new { File.join(root, "views") }

  # Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end



  # Landing Page
  get '/' do
    @title = "Memes Show Page"

    $memes = MemeAPI.new.meme_service.json_response

    @memes = $memes

    erb :'/index'
  end


end
