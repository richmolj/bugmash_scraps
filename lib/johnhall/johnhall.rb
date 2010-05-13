class Johnhall < Sinatra::Base

  set :root, File.dirname(__FILE__)
  
  get "/foo" do
    "Hello world! Bowdoin rulez!"
  end 
  
end