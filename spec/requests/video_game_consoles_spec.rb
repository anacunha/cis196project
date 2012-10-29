require 'spec_helper'

describe "VideoGameConsoles" do
  describe "GET /video_game_consoles" do
    
    fixtures :users
    
    before do
      sign_in
      visit video_game_consoles_path
      click_link "New Video game console"
    end
    
    it "name can't be blank", js:true do
      fill_in "Manufacturer", with: "Sony"
      click_button "Video game console"     
      error_message = "Name can't be blank"
      page.should have_content(error_message)
    end
    
    it "manufacturer can't be blank", js:true do
      fill_in "Name", with: "PlayStation 3"
      click_button "Video game console"
      
      error_message = "Manufacturer can't be blank"
      page.should have_content(error_message)
    end
    
  end
end