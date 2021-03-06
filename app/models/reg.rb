module Reg
  extend ActiveSupport::Concern

  included do
    belongs_to :user, optional: true
    belongs_to :game, optional: true
    has_many :rounds, -> { order('roundno asc') }

    attr_accessor :gametype, :regno, :rounds_count
  end

  def reg_end?
    self.rounds_count == 15
  end

end
