require 'rails_helper'

describe "reg01" do
  let(:reg) { create(:reg01) }

  before :each do
    4.times {
      reg.rounds << create(:round_hat, reg01: reg)
    }
  end

  it "has total points of the rounds" do
    reg.new_round
    reg.new_shot('BULL')
    reg.new_shot('NONE')
    reg.new_shot('NONE')
    reg.new_round
    reg.new_shot('17S')
    reg.new_shot('17D')
    expect(reg.rounds.length).to eq(6)
    expect(reg.gamestats).to eq(150)
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
    10.times {
      reg.rounds << create(:round_none, reg01: reg)
    }
    reg.new_round
    reg.new_shot('OUT')
    reg.new_shot('20S')
    reg.new_shot('OUT')
    expect(reg.rounds.length).to eq(15)
    expect(reg.rounds.last.roundno).to eq(15)
    expect(reg.gamestats).to eq(42)
    expect(reg.total_point).to eq(620)
  end

end
