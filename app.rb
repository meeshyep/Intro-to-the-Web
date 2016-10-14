require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.begin(params[:name_1], params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @game = Game.game
    erb (:play)
  end

  get '/attack' do
    @game = Game.game
    @game.attack(@game.idle_player)
    redirect '/play'
  end

  run! if app_file == $0
end
