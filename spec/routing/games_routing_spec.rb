require "rails_helper"

RSpec.describe GamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/games").to route_to("games#index")
    end

  end
end
