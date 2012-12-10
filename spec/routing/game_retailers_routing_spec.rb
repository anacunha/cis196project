require "spec_helper"

describe GameRetailersController do
  describe "routing" do

    it "routes to #index" do
      get("/game_retailers").should route_to("game_retailers#index")
    end

    it "routes to #new" do
      get("/game_retailers/new").should route_to("game_retailers#new")
    end

    it "routes to #show" do
      get("/game_retailers/1").should route_to("game_retailers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/game_retailers/1/edit").should route_to("game_retailers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/game_retailers").should route_to("game_retailers#create")
    end

    it "routes to #update" do
      put("/game_retailers/1").should route_to("game_retailers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/game_retailers/1").should route_to("game_retailers#destroy", :id => "1")
    end

  end
end
