module Reg
  extend ActiveSupport::Concern

  included do
    belongs_to :user, optional: true
    belongs_to :game, optional: true
    has_many :rounds, -> { order('roundno asc') }

    attr_accessor :gametype, :regno, :round_count
  end

  def regend?
    self.regno > 15
  end

end
