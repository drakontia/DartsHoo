require 'rails_helper'

describe "Round" do
  let(:reg) { create(:reg01) }
  let(:round) { create(:round_70, reg01: reg) }

  it "calculate score" do
    expect(Round.score("10S")).to eq(10)
    expect(Round.score("09D")).to eq(18)
    expect(Round.score("16T")).to eq(48)
    expect(Round.score("BULL")).to eq(50)
    expect(Round.score("NONE")).to eq(0)
  end

  it "shows total score of itself" do
    expect(round.persisted?).to be_truthy
    expect(round.total_score).to eq(70)
  end
end
