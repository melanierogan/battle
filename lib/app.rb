require 'sinatra/base'

class MyApp < Sinatra::Application
  get '/' do
    'Hello Battle!'
  end
end