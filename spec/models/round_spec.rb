require 'rails_helper'

describe "Round" do
  let(:round) { create(:round) }

  it "shows total score of itself" do
    expect(round.total_score).to eq(68)
  end
end
