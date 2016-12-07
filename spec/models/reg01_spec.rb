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
    reg.rounds.last.update(shot1st: '17S')
    reg.rounds.last.update(shot2nd: '17D')
    reg.rounds.last.update(shot3rd: 'NONE')
    expect(reg.rounds.length).to eq(6)
    expect(reg.rounds.first.roundno).to eq(1)
    expect(reg.gamestats).to eq(130)
    expect(reg.total_point).to eq(701)
  end

  it "has total points of the rounds with burst" do
    reg.rounds << burst
    reg.rounds.last.update(shot2nd: '20T')
    reg.rounds.last.update(shot3rd: 'NONE')
    expect(reg.rounds.length).to eq(5)
    expect(reg.total_point).to eq(630)
  end

  it "has total points of the rounds under reg over points" do
    reg.new_round
    reg.rounds.last.update(shot1st: 'OUT')
    reg.rounds.last.update(shot2nd: '20T')
    reg.rounds.last.update(shot3rd: 'OUT')
    expect(reg.rounds.length).to eq(5)
    #expect(reg.rounds.first.roundno).to eq(5)
    expect(reg.rounds.last.roundno).to eq(5)
    expect(reg.rounds.last.shot1st).to eq('OUT')
    expect(reg.total_point).to eq(660)
  end

end
