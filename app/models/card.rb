class Card < ApplicationRecord
  belongs_to :user, optional: true
  has_many :regs
  has_and_belongs_to_many :games

  validates :card_name, length: { maximum: 16 }
  validates :card_number, length: { is: 12 }, numericality: { only_integer: true }

  def profile_url
    profile_url = "https://card.dartslive.com/t/profile/index.jsp?u=" + card_number
    profile_url
  end

  def rating01
    if self.stats01 < 40 then
      rating01 = 1
    elsif self.stats01 >= 40 and self.stats01 < 95 then
      rating01 = 2 + ((self.stats01 - 40) / 5).round(2)
    elsif self.stats01 >= 95 and self.stats01 < 130 then
      rating01 = 13 + ((self.stats01 - 95) / 7).round(2)
    elsif self.stats01 >= 130 then
      rating01 = 18
    end
    rating01
  end

  def ratingcricket
    if self.statscricket < 1.30 then
      ratingcricket = 1
    elsif self.statscricket >= 1.30 and self.statscricket < 3.50 then
      ratingcricket = 2 + ((self.statscricket - 1.30) / 0.2).round(2)
    elsif self.statscricket >= 3.50 and self.statscricket < 4.75 then
      ratingcricket = 13 + ((self.statscricket - 3.50) / 0.25).round(2)
    elsif self.statscricket >= 4.75 then
      ratingcricket = 18
    end
    ratingcricket
  end

  def ratingnum
    ((rating01 + ratingcricket) / 2).round(2)
  end

  def rating
    if self.ratingnum < 4 then
      rating = 'C'
    elsif self.ratingnum >= 4 and self.ratingnum < 6 then
      rating = 'CC'
    elsif self.ratingnum >= 6 and self.ratingnum < 8 then
      rating = 'B'
    elsif self.ratingnum >= 8 and self.ratingnum < 10 then
      rating = 'BB'
    elsif self.ratingnum >= 10 and self.ratingnum < 13 then
      rating = 'A'
    elsif self.ratingnum >= 13 and self.ratingnum < 16 then
      rating = 'AA'
    elsif self.ratingnum >= 16 then
      rating = 'SA'
    end
  end
end
