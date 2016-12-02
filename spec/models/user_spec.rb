require 'rails_helper'

describe "User" do
  let(:user) { create(:user, user_name: 'John Doe', password: 'password', password_confirmation: 'password') }

  it "is created." do
    expect(user.user_name).to eq('John Doe')
  end

  it "has rating and rank by stats." do
    expect(user.stats01).to eq(80)
    expect(user.statscricket).to eq(2.5)
    expect(user.rating01).to eq(10)
    expect(user.ratingcricket).to eq(8)
    expect(user.ratingnum).to eq(9)
    expect(user.rating).to eq('BB')
  end

  it "update his stats." do
    user.update(stats01: 87, statscricket: 2.76)
    expect(user.rating01).to be_within(0.1).of(11.4)
    expect(user.ratingcricket).to be_within(0.1).of(9.3)
    expect(user.ratingnum).to be_within(0.1).of(10.3)
    expect(user.rating).to eq('A')
  end
end
