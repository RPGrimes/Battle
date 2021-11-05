require_relative 'player'

class Game
    attr_reader :turn
    
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end 

  def player_1
    @players[0]
  end 

  def player_2
    @players[1]
  end 

  def attack(player_name)
    player_name.reduce_health
    switch_turns(player_name)
  end 

  def switch_turns(player_name)
   player_name == player_1 ? @turn = player_1 : @turn = player_2
  end 
end 