require 'rails_helper'

RSpec.describe "rounds/show", type: :view do
  before(:each) do
    @round = assign(:round, Round.create!(
      :regid => 2,
      :roundno => 3,
      :shot1st => "Shot1st",
      :shot2nd => "Shot2nd",
      :shot3rd => "Shot3rd"
    ))
  end

end
