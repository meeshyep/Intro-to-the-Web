require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:name_1], params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    # @status = nil
    # @status = session[:status]
    erb (:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.players[@game.turn[1]])
    # session[:status] = 'attack'
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
