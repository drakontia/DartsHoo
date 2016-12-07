class Reg01 < ApplicationRecord
  include Reg

  attr_accessor :regno, :gametype, :number01, :rounds_count

  def total_point
    self.rounds.inject(0) { |total, round|
      total + round.total_score
    }
  end

  def rest_point
    self.number01 - self.total_point
  end

  def new_round
    if self.total_point > ( self.number01 * 0.8 ) && self.gamestats.blank?
      self.gamestats = ( self.total_point / self.rounds.length ).round(0)
    end
    self.rounds << Round.new
    self.rounds.last.update(roundno: self.rounds.length)
  end

end
