require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect '/play'

  end

  get '/play' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    puts params
    erb (:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
