class Reg01 < ApplicationRecord
  include Reg

  attr_accessor :regno, :gametype, :number01

  def total_point
    self.rounds.inject(0) { |total, round|
      total + round.total_score
    }
  end

  def gamestats
    n = 0
    totals = self.rounds.inject(0) do |total, round|
      total + round.total_score unless total[0] > ( self.number01 * 0.8 )
      n += 1 unless total > ( self.number01 * 0.8 )
      [total, n]
    end
    totals.sort { |t, n| ( t / n ).round(0) }
  end

end
