require 'rails_helper'

RSpec.describe "rounds/edit", type: :view do
  before(:each) do
    @round = assign(:round, Round.create!(
      :regid => 1,
      :roundno => 1,
      :shot1st => "MyString",
      :shot2nd => "MyString",
      :shot3rd => "MyString"
    ))
  end

end
