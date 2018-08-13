class Math_Game
  attr_reader :player1 :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def start_game
    @player1[:active] = true
  end

  def turn
  end

  def change_active_player
  end

  def question
  end

end