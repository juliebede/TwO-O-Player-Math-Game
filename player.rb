class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost_life()
    @lives -= 1
  end

  def get_life()
    return @lives
  end

  def get_name()
    return @name
  end
end

