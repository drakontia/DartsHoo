require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :dartsliveid => 2,
        :rating => 3,
        :cricketstats => 4,
        :stats01 => 5
      ),
      User.create!(
        :name => "Name",
        :dartsliveid => 2,
        :rating => 3,
        :cricketstats => 4,
        :stats01 => 5
      )
    ])
  end

end
