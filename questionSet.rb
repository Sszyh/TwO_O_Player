class QuestionSet
  
  def initialize
    @number1 = rand(21)
    @number2 = rand(21)
  end

  def print_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def check(answer)
    puts answer
    puts @number1 + @number2
    # answer.eql?(@number1 + @number2)
    if answer == @number1 + @number2
      true
    else 
      false
    end
  end
end