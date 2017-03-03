require 'sinatra/base'
require './lib/player_class'
require './lib/game_class'

class Battle < Sinatra::Base



  get '/' do
    erb :index
  end

  post '/names' do
   $player1 = Player.new(params[:player1_name])
   $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb :play
  end


  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb :attack
  end

end
