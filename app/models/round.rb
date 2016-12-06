class Round < ApplicationRecord
  belongs_to :reg01, optional: true

  attr_accessor :roundno, :shot1st, :shot2nd, :shot3rd

  def total_score
    score(self.shot1st) + score(self.shot2nd) + score(self.shot3rd)
  end

  def score(shot)
    if shot == 'OUT' or shot == 'NONE' then
      score = 0
    elsif shot == 'BULL' or shot == 'DBULL' then
      score = 50
    elsif shot == 'SBULL' then
      score = 25
    else
      score = multi(shot)
    end
    score
  end

  def multi(shot)
    case shot[2, 1]
    when "S" then
      shot[0, 2].to_i
    when "D" then
      shot[0, 2].to_i * 2
    when "T" then
      shot[0, 2].to_i * 3
    end
  end

end
