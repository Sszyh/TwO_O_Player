require "./player"
require "./gameloop"

class Game 
  attr_accessor :player1, :player2
  def initialize(p1,p2)
    @player1 = Player.new(p1)
    @player2 = Player.new(p2)
    @current_player = @player1
  end

  def start()
    gameloop = GameLoop.new(@current_player)
    # @question = QuestionSet.new()
    # puts "#{@current_player.name}: #{@question.print_question}"
    gameloop.score()
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
    result()
  end

  def result()
    if @player1.score != 0 && @player2.score != 0
      puts "#{@player1.name}: #{@player1.score}/3 vs #{player2.name}: #{@player2.score}/3"
      puts "----- NEW TURN -----"
      start()
    elsif @player1.score == 0 && @player2.score != 0
      puts "#{player2.name} wins with a score of #{player2.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "#{player1.name} wins with a score of #{player1.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end
end

