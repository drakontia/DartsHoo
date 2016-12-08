require 'rails_helper'

describe "reg01" do
  let(:reg) { create(:reg01) }
  let(:round) { create(:round, reg01: reg) }
  let(:just) { create(:round_just, reg01: reg) }
  let(:burst) { create(:round_burst, reg01: reg) }
  let(:under) { create(:round_under, reg01: reg) }

  before :each do
    4.times {
      reg.rounds << create(:round_hat, reg01: reg)
    }
  end

  it "has total points of the rounds" do
    reg.rounds << under
    reg.new_round
    reg.new_shot('17S')
    reg.new_shot('17D')
    expect(reg.rounds.length).to eq(6)
    expect(reg.rounds.last.shot3rd).to eq('NONE')
    expect(reg.gamestats).to eq(130)
    expect(reg.total_point).to eq(701)
  end

  it "has total points of the rounds with burst" do
    reg.new_round
    reg.new_shot('BULL')
    reg.new_shot('20T')
    expect(reg.rounds.length).to eq(5)
    expect(reg.rounds.last.shot3rd).to eq('NONE')
    expect(reg.total_point).to eq(600)
  end

  it "has total points of the rounds under reg over points" do
    reg.new_round
    reg.new_shot('OUT')
    reg.new_shot('20T')
    reg.new_shot('OUT')
    expect(reg.rounds.length).to eq(5)
    expect(reg.rounds.last.roundno).to eq(5)
    expect(reg.rounds.last.shot1st).to eq('OUT')
    expect(reg.total_point).to eq(660)
  end

end
