require 'rails_helper'

RSpec.describe "rounds/index", type: :view do
  before(:each) do
    assign(:rounds, [
      Round.create!(
        :regid => 2,
        :roundno => 3,
        :shot1st => "Shot1st",
        :shot2nd => "Shot2nd",
        :shot3rd => "Shot3rd"
      ),
      Round.create!(
        :regid => 2,
        :roundno => 3,
        :shot1st => "Shot1st",
        :shot2nd => "Shot2nd",
        :shot3rd => "Shot3rd"
      )
    ])
  end

end
