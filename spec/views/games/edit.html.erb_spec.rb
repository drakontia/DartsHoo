require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
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
