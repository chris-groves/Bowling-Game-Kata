class Game
  def initialize
    @score = []
  end
  
  def roll(pins_knocked_down)
    @score << pins_knocked_down
  end

  def score
    @score.sum
  end
end
