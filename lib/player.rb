class Player
  DEFAULT_HITPOINTS = 100
  DEFAULT_ATTACK = 10

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def lose_hitpoints
    @hitpoints -= DEFAULT_ATTACK
  end

end
