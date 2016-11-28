require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :dartsliveid => 1,
      :rating => 1,
      :cricketstats => 1,
      :stats01 => 1
    ))
  end

end
