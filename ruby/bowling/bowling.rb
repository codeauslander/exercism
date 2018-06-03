class Game
  def initialize
    @record = Hash.new { |h, k| h[k] = [] }
    @frame = 1
    @count = 0
  end

  def roll(pins)
    raise Game::BowlingError, 'Score is out range' unless (0..10) === pins
    @record[@frame] << pins
    combination_error if (@record[@frame].sum > 10 && @frame < 11) ||
                         (@record[10].sum < 10) && @frame == 11 ||
                         (@record[11].sum > 10 && @record[11].first < 10)
    next_frame(pins)
  end

  def score
    raise Game::BowlingError, 'Incomplete game' if @record.size < 10
    combination_error if (@record[10].sum == 10 && @record[11].size < 1) ||
                         (@record[10].first == 10 && @record[11].size < 2)
    scores_sum
  end

  private

    def scores_sum
      @record.sum do |frame, scores|
        if frame == 11
          bonus
        elsif frame == 10
          miss(10)
        elsif scores.first == 10
          strike(frame)
        elsif scores.sum == 10
          spare(frame)
        else
          miss(frame)
        end
      end
    end

    def strike(frame)
      10 + @record[frame + 1].first +
        (@record[frame + 1].first  == 10 ? @record[frame + 2].first : @record[frame + 1][1])
    end

    def spare(frame)
      10 + @record[frame + 1].first
    end

    def miss(frame)
      @record[frame].sum
    end

    def bonus
      miss(11)
    end

    def next_frame(pins)
      if pins == 10 && @frame != 11
        @frame += 1
      else
        @count += 1
        (@frame += 1 ; @count = 0) if @count == 2
      end
    end

    def combination_error
      raise Game::BowlingError, 'Wrong score combination'
    end
end

class Game::BowlingError < StandardError
end

module BookKeeping
  VERSION = 3
end