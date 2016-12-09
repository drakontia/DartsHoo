class Game < ApplicationRecord
  has_and_belongs_to_many :cards
  has_many :regs
end
