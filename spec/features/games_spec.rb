require 'spec_helper'

describe "Games" do
  describe "GET /all/games" do
    
    fixtures :platforms
    fixtures :users
    
    before do
      sign_in
      visit all_games_path
      click_link "Add a new Game"
    end
    
    it "title can't be blank", js:true do
      fill_in "Genre", with: "First-person shooter"
      click_button "Create Game"      
      error_message = "Title can't be blank"
      page.should have_content(error_message)
    end
    
    it "includes a platform", js:true do
      fill_in "Title", with: "Halo 4"
      fill_in "Genre", with: "First-person shooter"
      fill_in "Developer", with: "343 Industries"
      fill_in "Publisher", with: "Microsoft Studios"
      select "Xbox 360", from: "Platforms"
      click_on "Create Game"
      page.should have_content("successfully")
    end
    
  end
end