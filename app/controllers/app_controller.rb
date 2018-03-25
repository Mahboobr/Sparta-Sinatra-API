class AppController < Sinatra::Base

  # sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :view, Proc.new { File.join(root, "views") }

  # Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  $posts = [
    {
    id: 0,
    title: "Post 1",
    body: "This is the first post"
    },
    {
    id: 1,
    title: "Post 2",
    body: "This is the second post"
    },
    {
    id: 20,
    title: "Post 3",
    body: "This is the third post"
    }
  ]

  # Landing Page
  get '/' do
    @title = "Posts Show Page"

    @posts = $posts

    erb :'/index'
  end

end
