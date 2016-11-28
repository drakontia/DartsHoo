require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :gametype => "MyString",
      :result => "MyString",
      :regnum => 1,
      :player1st => 1,
      :player2nd => 1,
      :player3rd => 1,
      :player4th => 1
    ))
  end

end
