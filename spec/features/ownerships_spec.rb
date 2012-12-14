require 'spec_helper'

describe "Ownerships" do
  describe "GET /ownerships" do
    
    fixtures :users
    fixtures :games
    fixtures :game_platforms
    
    before do
      sign_in
      visit all_games_path
      click_link "Add to my games"
    end
    
    it "adds game to user's collection" do     
      success_message = "Your game was successfully added"
      page.should have_content(success_message)
    end
    
    it "removes game to user's collection" do 
      visit my_games_path
      click_link "Remove"     
      success_message = "Your game was successfully removed"
      page.should have_content(success_message)
    end
  end
end
