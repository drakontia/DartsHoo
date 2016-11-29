class User < ActiveRecord::Base
  has_and_belongs_to_many :games
  has_many :regs
  validates :user_name, presence: true, uniqueness: true
  validates :dartslive_id, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
