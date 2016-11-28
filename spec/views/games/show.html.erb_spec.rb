require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :gametype => "Gametype",
      :result => "Result",
      :regnum => 2,
      :player1st => 3,
      :player2nd => 4,
      :player3rd => 5,
      :player4th => 6
    ))
  end

end
