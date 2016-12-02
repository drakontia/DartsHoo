class Card < ApplicationRecord
  belongs_to :user, optional: true

  validates :card_name, length: { maximum: 16 }
  validates :card_number, length: { is: 12 }, numericality: { only_integer: true }

  def profile_url
    profile_url = "https://card.dartslive.com/t/profile/index.jsp?u=" + card_number
    profile_url
  end
end
