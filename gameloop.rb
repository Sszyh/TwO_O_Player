require "./player"
require "./questionSet"
class GameLoop
  
  # @score = 3
  def initialize(current_player)
    @current_player = current_player
    @question = QuestionSet.new()
    puts "#{@current_player.name}: #{@question.print_question}"
    @answer = gets.chomp.to_i

  end

  def score
    if @question.check(@answer)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @current_player.loss_score
    end
  end

end
      