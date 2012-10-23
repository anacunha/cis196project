require "spec_helper"

describe VideoGameConsolesController do
  describe "routing" do

    it "routes to #index" do
      get("/video_game_consoles").should route_to("video_game_consoles#index")
    end

    it "routes to #new" do
      get("/video_game_consoles/new").should route_to("video_game_consoles#new")
    end

    it "routes to #show" do
      get("/video_game_consoles/1").should route_to("video_game_consoles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/video_game_consoles/1/edit").should route_to("video_game_consoles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/video_game_consoles").should route_to("video_game_consoles#create")
    end

    it "routes to #update" do
      put("/video_game_consoles/1").should route_to("video_game_consoles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/video_game_consoles/1").should route_to("video_game_consoles#destroy", :id => "1")
    end

  end
end
