require 'rails_helper'

describe "reg01" do
  let(:reg) { create(:reg01) }
  let(:just) { create(:round_just, reg01: reg) }
  let(:burst) { create(:round_burst, reg01: reg) }
  let(:under) { create(:round_under, reg01: reg) }

  before :each do
    reg.rounds << create_list(:round,
                              9,
                              shot1st: "BULL",
                              shot2nd: "05D",
                              shot3rd: "10S",
                              reg01: reg )
  end

  it "has total points of the rounds" do
    reg.rounds << just
    expect(reg.rounds.length).to eq(10)
    expect(reg.gamestats).to eq(70)
    expect(reg.total_point).to eq(701)
  end

  it "has total points of the rounds with burst" do
    reg.rounds << burst
    expect(reg.rounds.length).to eq(10)
    expect(reg.total_point).to eq(630)
  end

  it "has total points of the rounds under reg over points" do
    reg.rounds << under
    expect(reg.rounds.length).to eq(10)
    expect(reg.total_point).to eq(680)
  end

end
