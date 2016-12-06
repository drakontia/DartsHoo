require 'rails_helper'

describe "Round" do
  let(:reg) { create(:reg01) }
  let(:round) { create(:round, reg01: reg) }

  it "shows total score of itself" do
    expect(round.total_score).to eq(65)
  end
end
