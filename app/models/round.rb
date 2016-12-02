class Round < ApplicationRecord
  belongs_to :reg01, optional: true
  belongs_to :regcricket, optional: true

  def total_score
    total_score = score(self.shot1st).to_i + score(self.shot2nd).to_i + score(self.shot3rd).to_i
    total_score
  end

  def score(shot)
    if shot == 'OUT' then
      score = 0
    elsif shot == 'BULL' or shot == 'DBULL' then
      score = 50
    elsif shot == 'SBULL' then
      score = 25
    else
      case shot[2, 1]
      when "S" then
        score = shot[0, 2].to_i
      when "D" then
        score = shot[0, 2].to_i * 2
      when "T" then
        score = shot[0, 2].to_i * 3
      end
    end
    score
  end
end
