require 'rails_helper'

RSpec.describe "regs/new", type: :view do
  before(:each) do
    assign(:reg, Reg.new(
      :userid => 1,
      :gameid => 1,
      :regno => 1,
      :gametype => "MyString",
      :gamestats => 1,
      :roundnum => 1
    ))
  end

end
