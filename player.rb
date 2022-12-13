class Player
  attr_accessor :score, :name

  def initialize(name)
    @name = name
    @score = 3
  end

  def loss_score
    @score -= 1
  end

end

