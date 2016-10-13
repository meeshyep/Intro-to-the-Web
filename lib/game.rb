class Game
  DEFAULT_ATTACK = 10

  def initialize
    @attack_value = DEFAULT_ATTACK
  end

  def attack(player)
    player.hitpoints -= @attack_value
  end
end
