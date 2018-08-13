require_relative 'player'

class Math_Game
  attr_accessor :player1, :player2, :active_player

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @active_player = @player1
  end

  def start_game
    new_turn
  end

  def change_active_player
    @active_player = (@active_player == @player1 ? @player2 : @player1)
  end

  def new_turn
    while @player1.lives > 0 && @player2.lives > 0
      puts "-------------- NEW TURN: PLAYER #{active_player.id} --------------"
      question
    end
    puts "-------------- GAME OVER --------------"
    puts "Player #{@active_player.id} wins! Player 1: #{@player1.lives}/3, Player 2: #{@player2.lives}/3"
    puts "---------------------------------------"
  end

  def question
    a = rand(1...2)
    b = rand(1...2)
    answer = a + b
    print "Player #{@active_player.id}: What is #{a} plus #{b}? "
    user_input = gets.chomp.to_i

    if user_input == answer
      puts "Player #{@active_player.id}: You got it!"
    else
      puts "Player #{@active_player.id}: Wrong answer! Lose a life!"
      @active_player.lose_life
    end

    puts "Current Score: Player 1: #{@player1.lives}/3, Player 2: #{@player2.lives}/3"
    change_active_player
  end

end