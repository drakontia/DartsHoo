class Round < ApplicationRecord
  belongs_to :reg01, optional: true

  attr_accessor :roundno, :shot1st, :shot2nd, :shot3rd

  def total_score
    Round.score(self.shot1st) + Round.score(self.shot2nd) + Round.score(self.shot3rd)
  end

  class << self
    def score(shot)
      if shot == 'OUT' or shot == 'NONE' or shot.nil?
        score = 0
      elsif shot == 'BULL' or shot == 'DBULL'
        score = 50
      elsif shot == 'SBULL'
        score = 25
      else
        score = self.multi(shot)
      end
      score
    end

    def multi(shot)
      case shot[2, 1]
      when "S"
        shot[0, 2].to_i
      when "D"
        shot[0, 2].to_i * 2
      when "T"
        shot[0, 2].to_i * 3
      end
    end
  end

end
