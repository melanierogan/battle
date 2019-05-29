require 'sinatra/base'

class MyApp < Sinatra::Application
  get '/' do
    'Testing infrastructure working!'
  end
end
