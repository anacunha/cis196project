require 'spec_helper'

describe Game do
  
  it "requires a title" do
    subject.video_game_console = VideoGameConsole.new(name: "Xbox 360", manufacturer: "Microsoft")
      
    subject.should_not be_valid   
    subject.title = "Halo 4"   
    subject.should be_valid
  end
  
  it "requires a video game console" do
    subject.title = "Halo 4"
    
    subject.should_not be_valid
    subject.video_game_console = VideoGameConsole.new(name: "Xbox 360", manufacturer: "Microsoft")
    subject.should be_valid
  end
  
end
