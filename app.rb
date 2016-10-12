require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
    $name_1 = Player.new(params[:name_1])
    $name_2 = Player.new(params[:name_2])
    redirect '/play'

  end

  get '/play' do
    @name_1 = $name_1.name
    @name_2 = $name_2.name
    erb (:play)
  end

  get '/attack' do
    @name_1 = $name_1.name
    @name_2 = $name_2.name
    erb (:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
