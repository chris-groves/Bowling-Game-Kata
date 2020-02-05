class Game

  attr_accessor :score_tally, :roll_count, :total_score

  def initialize
    @score_tally = []
    @total_score = 0
    @roll_count = 0
    @frame_count = 0
  end

  def roll(pins_knocked_down)
    @score_tally << pins_knocked_down
  end

  def score
    while true do
    if @score_tally[@roll_count] == 10
       @total_score += @score_tally[@roll_count]
       @total_score += @score_tally[@roll_count + 1]
       @total_score += @score_tally[@roll_count + 2]
       @roll_count += 1
       @frame_count += 1
    elsif spare?
       @total_score += @score_tally[@roll_count] + @score_tally[@roll_count + 1]
       @total_score += @score_tally[@roll_count + 2]
       @roll_count += 2
        @frame_count += 1
    else
       @total_score += @score_tally[@roll_count] + @score_tally[@roll_count + 1]
       @roll_count += 2
       @frame_count += 1
    end
    break if @frame_count == 10
    end
    @total_score
  end

  def spare?
    @score_tally[@roll_count] + @score_tally[@roll_count + 1] == 10
  end
end
