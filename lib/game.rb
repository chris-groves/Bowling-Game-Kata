class Game
  attr_accessor :bonus_points, :game_score, :bonus_points_marker

  def initialize
    @game_score = []
    @roll_number = 0
    @bonus_points_counter = 0
    @bonus_points = 0
  end

  def roll(pins_knocked_down)
    @roll_number += 1
    @game_score << pins_knocked_down
    if @roll_number > 1 && @roll_number % 2 != 0 && @game_score[-3..-2].sum == 10
      @bonus_points_counter += 1
    end
    if @bonus_points_counter > 0
      @bonus_points += pins_knocked_down
      @bonus_points_counter -= 1
    end
    if @roll_number % 2 != 0 && pins_knocked_down == 10
      @bonus_points_counter += 2
    end
  end

  def score
    @game_score.sum + @bonus_points
  end
end
