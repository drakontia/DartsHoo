require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :dartsliveid => 2,
      :rating => 3,
      :cricketstats => 4,
      :stats01 => 5
    ))
  end

end
