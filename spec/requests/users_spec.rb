require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    
    fixtures :users
    
    before do
      visit root_path
      click_on "Sign Up"
    end
    
    it "name can't be blank", js:true do
      fill_in "Email", with: "ana@cunha.com"
      click_button "Sign up"      
      error_message = "Name can't be blank"
      page.should have_content(error_message)
    end
    
    it "email can't be blank", js:true do
      fill_in "Name", with: "Ana"
      click_button "Sign up"      
      error_message = "Email can't be blank"
      page.should have_content(error_message)
    end

  end
end