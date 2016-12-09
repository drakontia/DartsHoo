require 'rails_helper'

describe "User" do
  let(:user) { create(:user, password: 'password', password_confirmation: 'password') }
  let(:card) { create(:card, user: user) }

  it "is created." do
    expect(user.user_name).to eq('John Doe')
  end

  it "has one dartslive card" do
    expect(card.user).to eq(user)
    expect(user.cards.length).to eq(1)
    expect(card.card_name).to eq('user1')
  end

  it "removes old card and create new 3 cards" do
    card.destroy
    create_list(:card, 3, user: user)
    expect(user.cards.length).to eq(3)
  end
end
