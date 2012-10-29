require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    
    fixtures :users
    
    before do
      sign_in
      visit users_path
      click_link "New User"
    end
    
    it "name can't be blank", js:true do
      fill_in "Email", with: "ana@cunha.com"
      click_button "Create User"      
      error_message = "Name can't be blank"
      page.should have_content(error_message)
    end
    
    it "email can't be blank", js:true do
      fill_in "Name", with: "Ana"
      click_button "Create User"      
      error_message = "Email can't be blank"
      page.should have_content(error_message)
    end
    
    it "email has to be unique", js:true do
      fill_in "Name", with: "Ana"
      fill_in "Email", with: "ana@email.com"
      click_on "Create User"
      error_message = "Email has already been taken"
      page.should have_content(error_message)
    end
    
  end
end