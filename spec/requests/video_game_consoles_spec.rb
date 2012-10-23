require 'spec_helper'

describe "VideoGameConsoles" do
  describe "GET /video_game_consoles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get video_game_consoles_path
      response.status.should be(200)
    end
  end
end
