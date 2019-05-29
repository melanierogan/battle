require 'sinatra/base'


class MyApp < Sinatra::Application
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:players] = [params[:Player_1], params[:Player_2]]
    # erb(:play)
    redirect '/play'
  end

  get '/play' do
    @Player_1 = session[:players][0]
    @Player_2 = session[:players][1]
    erb :play
  end
end
