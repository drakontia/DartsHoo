class Game < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :regs
end
