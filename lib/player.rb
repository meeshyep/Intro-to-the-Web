class Player
  DEFAULT_HITPOINTS = 100
  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end

end
