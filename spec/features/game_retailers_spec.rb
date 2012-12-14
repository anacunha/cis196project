require 'spec_helper'

describe "GameRetailers" do
  describe "GET /game_retailers" do
    
    before do
      sign_in
      visit root_path
      click_link "Retailers"
    end
    
    it "adds new retailer" do
      click_link "Add My Favorite Retailer"
      fill_in "Name", with: "Amazon"
      fill_in "Website", with: "http://amazon.com"  
    end
    
  end
end
