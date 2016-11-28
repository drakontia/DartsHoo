require 'rails_helper'

RSpec.describe "regs/edit", type: :view do
  before(:each) do
    @reg = assign(:reg, Reg.create!(
      :userid => 1,
      :gameid => 1,
      :regno => 1,
      :gametype => "MyString",
      :gamestats => 1,
      :roundnum => 1
    ))
  end

end
