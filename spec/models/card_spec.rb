require 'rails_helper'

describe "Card" do
  let(:user) { create(:user, password: 'password', password_confirmation: 'password') }
  let(:card) { create(:card, user: user) }

  it "has rating and rank by stats." do
    expect(card.stats01).to eq(80)
    expect(card.statscricket).to eq(2.5)
    expect(card.rating01).to eq(10)
    expect(card.ratingcricket).to eq(8)
    expect(card.ratingnum).to eq(9)
    expect(card.rating).to eq('BB')
  end

  it "update own stats." do
    card.update(stats01: 87, statscricket: 2.76)
    expect(card.rating01).to be_within(0.1).of(11.4)
    expect(card.ratingcricket).to be_within(0.1).of(9.3)
    expect(card.ratingnum).to be_within(0.1).of(10.3)
    expect(card.rating).to eq('A')
  end
end
