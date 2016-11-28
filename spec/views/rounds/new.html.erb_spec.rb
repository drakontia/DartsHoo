require 'rails_helper'

RSpec.describe "rounds/new", type: :view do
  before(:each) do
    assign(:round, Round.new(
      :regid => 1,
      :roundno => 1,
      :shot1st => "MyString",
      :shot2nd => "MyString",
      :shot3rd => "MyString"
    ))
  end

end
