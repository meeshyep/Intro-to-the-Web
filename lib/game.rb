class Game
  DEFAULT_ATTACK = 10

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @attack_value = DEFAULT_ATTACK
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack
    @player_2.hitpoints -= @attack_value
  end
end
