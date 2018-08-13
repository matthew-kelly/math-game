class Player
  attr_reader :id
  attr_accessor :lives, :active

  def initialize(id)
    @id = id
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end
end