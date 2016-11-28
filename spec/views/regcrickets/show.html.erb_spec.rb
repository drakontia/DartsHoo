require 'rails_helper'

RSpec.describe "regs/show", type: :view do
  before(:each) do
    @reg = assign(:reg, Reg.create!(
      :userid => 2,
      :gameid => 3,
      :regno => 4,
      :gametype => "Gametype",
      :gamestats => 5,
      :roundnum => 6
    ))
  end

end
