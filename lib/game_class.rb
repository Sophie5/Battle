require_relative 'player_class'

class Game

attr_reader :player1, :player2, :current_player, :opponent_player, :winner

  def initialize(player1,player2)
    @players = [player1,player2]
    @current_player = player1
    @opponent_player = player2
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
   player.receive_damage
   check_status_of_health
  end

  def switching
    @opponent_player = @current_player
    @current_player = opponent_of(current_player)

  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

 def game_over?
 (@current_player.hit_points <= 0 || @opponent_player.hit_points <=0)
 end

 def check_status_of_health
   if game_over?
   @winner = @current_player
   else
     switching
   end
 end
end
