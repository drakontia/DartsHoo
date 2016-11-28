require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :dartsliveid => 1,
      :rating => 1,
      :cricketstats => 1,
      :stats01 => 1
    ))
  end

end
