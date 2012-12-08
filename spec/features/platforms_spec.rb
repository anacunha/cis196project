require 'spec_helper'

describe "Platforms" do
  describe "GET /platforms" do
    
    fixtures :users
    
    before do
      sign_in
      visit platforms_path
      click_link "New Platform"
    end
    
    it "name can't be blank", js:true do
      fill_in "Manufacturer", with: "Sony"
      click_button "Platform"     
      error_message = "Name can't be blank"
      page.should have_content(error_message)
    end
    
    it "manufacturer can't be blank", js:true do
      fill_in "Name", with: "PlayStation 3"
      click_button "Platform"
      
      error_message = "Manufacturer can't be blank"
      page.should have_content(error_message)
    end
    
  end
end