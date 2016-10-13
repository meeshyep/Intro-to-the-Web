class Player
  DEFAULT_HITPOINTS = 100
  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end

end
