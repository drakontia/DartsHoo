require 'rails_helper'

RSpec.describe "regs/index", type: :view do
  before(:each) do
    assign(:regs, [
      Reg.create!(
        :userid => 2,
        :gameid => 3,
        :regno => 4,
        :gametype => "Gametype",
        :gamestats => 5,
        :roundnum => 6
      ),
      Reg.create!(
        :userid => 2,
        :gameid => 3,
        :regno => 4,
        :gametype => "Gametype",
        :gamestats => 5,
        :roundnum => 6
      )
    ])
  end

end
