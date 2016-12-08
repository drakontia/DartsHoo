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

  def new_shot(shot)
    if self.rounds.last.shot1st.blank?
      self.rounds.last.update(shot1st: shot)
    elsif self.rounds.last.shot2nd.blank?
      self.rounds.last.update(shot2nd: shot)
    else
      self.rounds.last.update(shot3rd: shot)
    end

    if self.rest_point < 0
      round_burst
    elsif self.rest_point == 0
      round_over
    end
  end

  def round_burst
    self.rounds.last.update(round_result: 'Burst')
    if self.rounds.last.shot2nd.blank?
      self.rounds.last.update(shot2nd: 'NONE')
    elsif self.rounds.last.shot3rd.blank?
      self.rounds.last.update(shot3rd: 'NONE')
    end
  end

  def round_over
    if self.rounds.last.shot2nd.blank?
      self.rounds.last.update(shot2nd: 'NONE')
    elsif self.rounds.last.shot3rd.blank?
      self.rounds.last.update(shot3rd: 'NONE')
    end
  end

end
