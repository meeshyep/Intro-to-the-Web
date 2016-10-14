class Game

   attr_reader :turn, :players

  def initialize(player_1, player_2)
    @players  = [Player.new(player_1), Player.new(player_2)]
    @turn = [0, 1]
  end

  # def player_1
  #   players[0]
  # end
  #
  # def player_2
  #   players[1]
  # end

  def attack(player)
    player.lose_hitpoints
    switch_turn
  end

  def switch_turn
    @turn.rotate!
  end
end
