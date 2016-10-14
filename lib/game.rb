class Game

  class << self; attr_accessor :game end

  def self.begin(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

   attr_reader :turn, :players
   attr_accessor :idle_player, :active_player

  def initialize(player_1, player_2)
    @players  = [Player.new(player_1), Player.new(player_2)]
    @turn = [0, 1]
  end

  def attack(player)
    player.lose_hitpoints
    switch_turn
  end

  def switch_turn
    @turn.rotate!
  end

  def idle_player
    Game.game.players[Game.game.turn[1]]
  end

  def active_player
    Game.game.players[Game.game.turn[0]]
  end

end
