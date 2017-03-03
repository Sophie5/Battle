require 'sinatra/base'
require './lib/player_class'
require './lib/game_class'

class Battle < Sinatra::Base



  get '/' do
    erb :index
  end

  post '/names' do
   player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do

    @game = $game
    erb :play
  end


  get '/attack' do
    @game = $game
    @game.attack(@game.player2)

    erb :attack
  end

end
