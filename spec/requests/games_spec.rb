require 'spec_helper'

describe "Games" do
  describe "GET /games" do
    
    fixtures :video_game_consoles
    fixtures :users
    
    before do
      sign_in
      visit games_path
      click_link "New Game"
    end
    
    it "title can't be blank", js:true do
      fill_in "Genre", with: "First-person shooter"
      click_button "Create Game"      
      error_message = "Title can't be blank"
      page.should have_content(error_message)
    end
    
    it "includes a video game console", js:true do
      fill_in "Title", with: "Halo 4"
      fill_in "Genre", with: "First-person shooter"
      fill_in "Developer", with: "343 Industries"
      fill_in "Publisher", with: "Microsoft Studios"
      select "Xbox", from: "Video game console"
      click_on "Create Game"
      
      page.should have_content("successfully")
    end
    
  end
end