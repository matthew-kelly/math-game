class Player
  attr_accessor :id :lives

  def initialize(id)
    @id = id
    @lives = 3
    @active = false
  end

end