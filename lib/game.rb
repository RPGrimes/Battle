require_relative 'player'

class Game
    attr_reader :turn, :players, :victim, :game
    
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
    @victim = player_2
  end 

  def player_1
    @players[0]
  end 

  def player_2
    @players[1]
  end 

  def attack(player_name)
    player_name.reduce_health
  end 

  def switch_turns
   @turn = opponent_of(turn)
   @victim = opponent_of(victim)
  end

  private
  
  def opponent_of(player_name)
    players.select { |player| player != player_name }.first
  end

end 