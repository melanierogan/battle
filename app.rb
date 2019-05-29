require 'sinatra/base'

class MyApp < Sinatra::Application
  get '/' do
    erb(:index)
  end

  post '/names' do
    @Player_1 = params[:Player_1]
    @Player_2 = params[:Player_2]
    erb(:play)
  end
end
