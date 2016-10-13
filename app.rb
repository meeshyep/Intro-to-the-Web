require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:name_1])
    @player_2 = Player.new(params[:name_2])
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    @status = nil
    @status = session[:status]
    erb (:play)
  end

  post '/attack' do
    $game.attack
    session[:status] = 'attack'
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
