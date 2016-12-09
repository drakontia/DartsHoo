class User < ApplicationRecord
  has_many :cards

  validates :user_name, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates_presence_of :password, :password_confirmation
  validates_confirmation_of :password

  attr_accessor :user_name, :email, :password, :password_confirmation

end
